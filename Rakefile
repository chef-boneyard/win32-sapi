require 'rake'
require 'rake/clean'
require 'rake/testtask'

CLEAN.include('**/*.gem', '**/*.rbc')

namespace :gem do
  desc "Create the win32-sapi gem"
  task :create => [:clean] do
    require 'rubygems/package'
    spec = eval(IO.read('win32-sapi.gemspec'))
    spec.signing_key = File.join(Dir.home, '.ssh', 'gem-private_key.pem')
    Gem::Package.build(spec, true)
  end

  desc "Install the win32-sapi gem"
  task :install => [:create] do
    file = Dir["*.gem"].first
    sh "gem install -l #{file}"
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
