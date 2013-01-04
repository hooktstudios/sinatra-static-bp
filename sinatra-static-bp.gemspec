Gem::Specification.new do |s|
  s.name        = 'sinatra-static-bp'
  s.version     = '0.0.0'
  s.executables << 'sinatra-static-bp'
  s.date        = '2013-01-03'
  s.summary     = 'sinatra-static-bp'
  s.description = 'Boilerplate generator for static sinatra applications'
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