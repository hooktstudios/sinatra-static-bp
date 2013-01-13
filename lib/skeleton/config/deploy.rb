require 'capistrano/s3'
require 'capistrano/ext/multistage'

set :default_stage, 'development'

set :s3, YAML::load( File.open( File.expand_path( '../s3.yml', __FILE__ ) ) )

before 'deploy' do
  run_locally "rm -rf public/*"
  run_locally "export RACK_ENV=production && bundle exec rake sinatra:export"
  run_locally "export RACK_ENV=production && bundle exec rake assetpack:build"
end