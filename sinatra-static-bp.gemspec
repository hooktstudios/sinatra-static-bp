Gem::Specification.new do |s|
  s.name        = 'sinatra-static-bp'
  s.version     = '0.1.3'
  s.executables << 'sinatra-static-bp'
  s.date        = '2013-01-03'
  s.summary     = 'sinatra-static-bp'
  s.description = 'Boilerplate for simple static ruby applications. Amazon S3 deploy with complete assets management.'
  s.authors     = ['Jean-Philippe Doyle']
  s.email       = 'jeanphilippe.doyle@hooktstudios.com'
  s.cert_chain  = ['certs/j15e.pem']
  s.signing_key = File.expand_path('~/.gem/private_key.pem') if $0 =~ /gem\z/
  s.files       = Dir[
    'bin/sinatra',
    'lib/sinatra-static-bp.rb',
    'lib/skeleton/**/*',
    'certs/*',
    'LICENSE',
    'README.md'
    ]
  s.homepage    =
    'http://github.com/hooktstudios/sinatra-static-bp'
end