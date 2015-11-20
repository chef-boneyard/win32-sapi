require 'rubygems'

Gem::Specification.new do |spec|
  spec.name       = 'win32-sapi'
  spec.version    = '0.1.8'
  spec.author     = 'Daniel J. Berger'
  spec.license    = 'Artistic 2.0'
  spec.email      = 'djberg96@gmail.com'
  spec.homepage   = 'http://github.com/djberg96/win32-sapi'
  spec.summary    = 'An interface to the MS SAPI (Sound API) library.'
  spec.test_file  = 'test/test_win32_sapi5.rb'
  spec.files      = Dir['**/*'].reject{ |f| f.include?('git') }
  spec.cert_chain = Dir['certs/*']

  spec.extra_rdoc_files  = ['README', 'CHANGES', 'MANIFEST']

  spec.add_development_dependency('test-unit')
  spec.add_development_dependency('rake')

  spec.description = <<-EOF
    The win32-sapi library provides an interface to the MS Windows sound
    interface, otherwise known as SAPI, using OLE.
  EOF
end
