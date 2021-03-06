# encoding: utf-8
require 'rubygems'
require 'bundler'

Bundler.require

class App < Sinatra::Base
  set :root, File.dirname(__FILE__)
  register Sinatra::Export
  register Sinatra::AssetPack
  register Sinatra::Reloader if development?

  assets {
    serve '/',      from: 'assets/public'
    serve '/fonts', from: 'assets/fonts'
    serve '/js',    from: 'assets/js'
    serve '/css',   from: 'assets/css'
    serve '/img',   from: 'assets/img'

    # Specify your assets packages
    # js :app, '/js/app.js', [
    #   '/js/vendor/jquery.js',
    #   '/js/main.js'
    # ]
    # css :app, '/css/application.css', [
    #   '/css/styles.css',
    # ]

    js_compression  :jsmin      # Optional
    css_compression :simple       # Optional
  }

  get '/' do
    erb :index
  end
end