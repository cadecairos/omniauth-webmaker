$:.unshift(__FILE__ + '/../lib')

require 'bundler'
Bundler.setup :default, :test

require 'rspec'
require 'rack/test'
require 'omniauth-webmaker'

RSpec.configure do |config|
  config.include Rack::Test::Methods
end
