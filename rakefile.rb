namespace :specs do
  require 'spec/rake/spectask'

  @spec_opts = '--colour --format specdoc'

  desc "Run functional specs for RockSalt"
  Spec::Rake::SpecTask.new :all do |t|
    t.spec_files = 'spec/**/*_spec.rb'
    t.spec_opts << @spec_opts
  end
end

namespace :jeweler do
  require 'jeweler'  
  Jeweler::Tasks.new do |gs|
    gs.name = "rocksalt"
    gs.summary = "A .NET Assembly Manager Using RubyGems"
    gs.description = "Manage your .NET reference assemblies by downloading gem packages, and coping the project assembly to your solution library."
    gs.email = "derickbailey@gmail.com"
    gs.homepage = "http://github.com/derickbailey/rocksalt"
    gs.authors = ["Derick Bailey", "Josh Flanagan"]
    gs.has_rdoc = false  
    gs.files.exclude("rocksalt.gemspec", ".gitignore", "spec/support/Tools")

    gs.add_dependency('rake', '>= 0.8.7')

    gs.add_development_dependency('rspec', '>= 1.2.8')
    gs.add_development_dependency('jeweler', '>= 1.2.1')
    gs.add_development_dependency('derickbailey-notamock', '>= 0.0.1')
    gs.add_development_dependency('jekyll', '>= 0.5.4')
  end
end
