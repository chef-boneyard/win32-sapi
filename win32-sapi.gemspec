require 'rubygems'

spec = Gem::Specification.new do |gem|
   gem.name      = 'win32-sapi'
   gem.version   = '0.1.5'
   gem.author    = 'Daniel J. Berger'
   gem.license   = 'Artistic 2.0'
   gem.email     = 'djberg96@gmail.com'
   gem.homepage  = 'http://www.rubyforge.org/projects/win32utils'
   gem.platform  = Gem::Platform::RUBY
   gem.summary   = 'An interface to the MS SAPI (Sound API) library.'
   gem.test_file = 'test/test_win32_sapi5.rb'
   gem.has_rdoc  = true
   gem.files     = Dir['**/*'].reject{ |f| f.include?('CVS') }

   gem.rubyforge_project = 'win32utils'
   gem.extra_rdoc_files  = ['README', 'CHANGES', 'MANIFEST']

   gem.description = <<-EOF
      The win32-sapi library provides an interface to the MS Windows sound
      interface, otherwise known as SAPI, using OLE.
   EOF
end

Gem::Builder.new(spec).build