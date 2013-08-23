require 'rake'
require 'rake/clean'
require 'rake/testtask'

CLEAN.include('**/*.gem', '**/*.rbc')

namespace :gem do
  desc "Create the win32-sapi gem"
  task :create => [:clean] do
    spec = eval(IO.read('win32-sapi.gemspec'))
    if Gem::VERSION.to_f < 2.0
      Gem::Builder.new(spec).build
    else
      require 'rubygems/package'
      Gem::Package.build(spec)
    end
  end

  desc "Install the win32-sapi gem"
  task :install => [:create] do
    file = Dir["*.gem"].first
    sh "gem install #{file}"
  end
end

desc 'Run the example win32-sapi program'
task :example do
  ruby '-Ilib examples/example_sapi5.rb'
end

Rake::TestTask.new do |t|
  t.warning = true
  t.verbose = true
end

task :default => :test
