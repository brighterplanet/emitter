# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{emitter}
  s.version = "0.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Andy Rossmeissl", "Seamus Abshere", "Ian Hough", "Matt Kling", "Derek Kastner"]
  s.date = %q{2010-12-02}
  s.description = %q{A software model in Ruby for the greenhouse gas emissions}
  s.email = %q{derek@brighterplanet.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    "LICENSE",
     "README.rdoc",
     "lib/emitter.rb"
  ]
  s.homepage = %q{http://github.com/brighterplanet/emitter}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{The mother of all carbon models}
  s.test_files = [
    "spec/emitter/meta_spec.rb",
     "spec/emitter_spec.rb",
     "spec/fixtures/biplane/lib/biplane/carbon_model.rb",
     "spec/fixtures/biplane/lib/biplane/characterization.rb",
     "spec/fixtures/biplane/lib/biplane/data.rb",
     "spec/fixtures/biplane/lib/biplane/summarization.rb",
     "spec/fixtures/biplane/lib/biplane.rb",
     "spec/fixtures/dirigible/lib/dirigible/carbon_model.rb",
     "spec/fixtures/dirigible/lib/dirigible/characterization.rb",
     "spec/fixtures/dirigible/lib/dirigible/data.rb",
     "spec/fixtures/dirigible/lib/dirigible/fallback.rb",
     "spec/fixtures/dirigible/lib/dirigible/relationships.rb",
     "spec/fixtures/dirigible/lib/dirigible/summarization.rb",
     "spec/fixtures/dirigible/lib/dirigible.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<activerecord>, ["~> 3"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<sniff>, [">= 0"])
      s.add_runtime_dependency(%q<activesupport>, ["~> 3"])
      s.add_runtime_dependency(%q<characterizable>, ["~> 0.1"])
      s.add_runtime_dependency(%q<cohort_scope>, ["~> 0.1"])
      s.add_runtime_dependency(%q<data_miner>, ["~> 0.5"])
      s.add_runtime_dependency(%q<earth>, ["~> 0.3"])
      s.add_runtime_dependency(%q<falls_back_on>, ["~> 0.0.3"])
      s.add_runtime_dependency(%q<leap>, ["~> 0.4.4"])
      s.add_runtime_dependency(%q<summary_judgement>, ["~> 1.3"])
      s.add_runtime_dependency(%q<timeframe>, ["~> 0.0.8"])
      s.add_runtime_dependency(%q<weighted_average>, ["~> 0.0.4"])
    else
      s.add_dependency(%q<activerecord>, ["~> 3"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<sniff>, [">= 0"])
      s.add_dependency(%q<activesupport>, ["~> 3"])
      s.add_dependency(%q<characterizable>, ["~> 0.1"])
      s.add_dependency(%q<cohort_scope>, ["~> 0.1"])
      s.add_dependency(%q<data_miner>, ["~> 0.5"])
      s.add_dependency(%q<earth>, ["~> 0.3"])
      s.add_dependency(%q<falls_back_on>, ["~> 0.0.3"])
      s.add_dependency(%q<leap>, ["~> 0.4.4"])
      s.add_dependency(%q<summary_judgement>, ["~> 1.3"])
      s.add_dependency(%q<timeframe>, ["~> 0.0.8"])
      s.add_dependency(%q<weighted_average>, ["~> 0.0.4"])
    end
  else
    s.add_dependency(%q<activerecord>, ["~> 3"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<sniff>, [">= 0"])
    s.add_dependency(%q<activesupport>, ["~> 3"])
    s.add_dependency(%q<characterizable>, ["~> 0.1"])
    s.add_dependency(%q<cohort_scope>, ["~> 0.1"])
    s.add_dependency(%q<data_miner>, ["~> 0.5"])
    s.add_dependency(%q<earth>, ["~> 0.3"])
    s.add_dependency(%q<falls_back_on>, ["~> 0.0.3"])
    s.add_dependency(%q<leap>, ["~> 0.4.4"])
    s.add_dependency(%q<summary_judgement>, ["~> 1.3"])
    s.add_dependency(%q<timeframe>, ["~> 0.0.8"])
    s.add_dependency(%q<weighted_average>, ["~> 0.0.4"])
  end
end

