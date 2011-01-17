require 'rubygems'

Gem::Specification.new do |spec|
  spec.name      = 'win32-sapi'
  spec.version   = '0.1.6'
  spec.author    = 'Daniel J. Berger'
  spec.license   = 'Artistic 2.0'
  spec.email     = 'djberg96@gmail.com'
  spec.homepage  = 'http://www.rubyforge.org/projects/win32utils'
  spec.platform  = Gem::Platform::RUBY
  spec.summary   = 'An interface to the MS SAPI (Sound API) library.'
  spec.test_file = 'test/test_win32_sapi5.rb'
  spec.has_rdoc  = true
  spec.files     = Dir['**/*'].reject{ |f| f.include?('git') }

  spec.rubyforge_project = 'win32utils'
  spec.extra_rdoc_files  = ['README', 'CHANGES', 'MANIFEST']

  spec.add_development_dependency('windows-pr')

  spec.description = <<-EOF
    The win32-sapi library provides an interface to the MS Windows sound
    interface, otherwise known as SAPI, using OLE.
  EOF
end
