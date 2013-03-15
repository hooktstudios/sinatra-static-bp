require 'capistrano/s3'
require 'capistrano/ext/multistage'

set :default_stage, 'development'

set :s3, YAML::load( File.open( File.expand_path( '../s3.yml', __FILE__ ) ) )

#
# Set optionnal S3 headers for cachec controls,
# might you to set this only for production
#
# set :bucket_write_options, {
#   cache_control: "max-age=94608000, public"
# }

before 'deploy' do
  run_locally "rm -rf ./public"
  run_locally "mkdir public"
  run_locally "export RACK_ENV=production && bundle exec rake sinatra:export"
  run_locally "export RACK_ENV=production && bundle exec rake assetpack:build"
end