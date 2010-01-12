require 'rake'
require 'rake/testtask'

desc 'Install the win32-sapi library (non-gem)'
task :install do
   dest = File.join(Config::CONFIG['sitelibdir'], 'win32')
   Dir.mkdir(dest) unless File.exists? dest
   cp 'lib/win32/sapi5.rb', dest, :verbose => true
end

desc 'Install the win32-sapi library as a gem'
task :install_gem do
   ruby 'win32-sapi.gemspec'
   file = Dir["*.gem"].first
   sh "gem install #{file}"
end

desc 'Run the example program'
task :example do
   ruby '-Ilib examples/example_sapi5.rb'
end

Rake::TestTask.new do |t|
   t.warning = true
   t.verbose = true
end
