ENV["RAILS_ENV"] ||= 'test'
require File.dirname(__FILE__) + "/../config/environment" unless defined?(Rails)
require 'rspec/rails'
require 'factory_girl'

RSpec.configure do |c|
  c.mock_with :rspec
  c.filter_run :focus => true
  c.run_all_when_everything_filtered = true
end

class ActionController::TestCase
  include Devise::TestHelpers
end

$redis.select 15
