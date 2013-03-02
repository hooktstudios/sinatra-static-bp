Gem::Specification.new do |s|
  s.name        = 'sinatra-static-bp'
  s.version     = '0.1.2'
  s.executables << 'sinatra-static-bp'
  s.date        = '2013-01-03'
  s.summary     = 'sinatra-static-bp'
  s.description = 'Boilerplate for simple static ruby applications. Amazon S3 deploy with complete assets management.'
  s.authors     = ['Jean-Philippe Doyle']
  s.email       = 'jeanphilippe.doyle@hooktstudios.com'
  s.files       = Dir[
    'lib/sinatra-static-bp.rb',
    'lib/skeleton/**/*',
    'bin/sinatra',
    'LICENSE',
    'README.md'
    ]
  s.homepage    =
    'http://github.com/hooktstudios/sinatra-static-bp'
end