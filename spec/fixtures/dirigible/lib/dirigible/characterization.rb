require 'characterizable'

module BrighterPlanet
  module Dirigible
    module Characterization
      def self.included(base)
        base.send :include, Characterizable
        base.characterize do
          has :distance
          has :payload
          has :dirigible_class
        end
        base.add_implicit_characteristics
      end
    end
  end
end
