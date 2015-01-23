ENV["RAILS_ENV"] ||= 'test'
require 'spec_helper'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'

# run migrations before tests
ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  # use Rail's default fixtures
  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  # use transactions with fixtures
  config.use_transactional_fixtures = true

  # mixin get/post helpers
  config.infer_spec_type_from_file_location!
end
