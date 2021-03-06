require 'active_record_inline_schema'
require 'active_support'
require 'active_support/core_ext'
require 'charisma'
require 'falls_back_on'
require 'leap'
require 'summary_judgement'

require 'emitter/measurement'

module BrighterPlanet
  module Emitter
    # "included" not "self.included"
    # why?
    # This module **extends other modules**
    # it forcibly (over)writes their definitions of self.included
    # BrighterPlanet::AutomobileTrip.extend(Emitter) -> now BrighterPlanet::AutomobileTrip has self.included
    # MyAutomobileTrip.include(BrighterPlanet::AutomobileTrip) -> will call BrighterPlanet::AutomobileTrip.included(MyAutomobileTrip)
    def included(base)
      base.extend ClassMethods

      # here self is the emitter module
      common_name = self.name.demodulize.underscore
      common_camel = common_name.camelcase
      
      base.instance_variable_set :@impact_scope, @impact_scope if @impact_scope
      
      base.extend ::Leap::Subject
      base.send :include, "::BrighterPlanet::#{common_camel}::ImpactModel".constantize

      base.send :include, ::Charisma
      base.send :include, "::BrighterPlanet::#{common_camel}::Characterization".constantize
      base.class_eval do
        preexisting = characterization.keys
        decisions[:impact].committees.reject do |committee|
          preexisting.include?(committee.name)
        end.each do |committee|
          characterize do
            has committee.name, :options => committee.options.slice(:measures, :display_with)
          end
        end
      end

      base.send :include, "::BrighterPlanet::#{common_camel}::Data".constantize

      base.data_miner_script.prepend_once :process, :auto_upgrade!
      base.data_miner_script.append_once :process, :run_data_miner_on_parent_associations!

      base.extend ::SummaryJudgement
      base.send :include, "::BrighterPlanet::#{common_camel}::Summarization".constantize

      begin
        require "#{common_name}/fallback"
        base.send :include, "::BrighterPlanet::#{common_camel}::Fallback".constantize
      rescue ::LoadError
        # not required
      end

      base.send :include, "::BrighterPlanet::#{common_camel}::Relationships".constantize
    end

    # this gets added as a class method to the emitter module
    def scope(statement)
      @impact_scope = statement
    end
        
    module ClassMethods
      # this will have been set by self.included on the emitter module
      def impact_scope
        @impact_scope
      end

      def emitter
        name.demodulize
      end
    end
  end
end
