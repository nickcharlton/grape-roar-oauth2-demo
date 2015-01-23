ENV["RAILS_ENV"] ||= 'test'
require 'spec_helper'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'

# load in the support directory
Dir[Rails.root.join('spec/support/**/*.rb')].each { |f| require f }

# run migrations before tests
ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  # use Rail's default fixtures
  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  # use transactions with fixtures
  config.use_transactional_fixtures = true

  # mixin get/post helpers
  config.infer_spec_type_from_file_location!

  # include the API specs
  config.include RSpec::Rails::RequestExampleGroup, type: :request,
                                                    file_path: /spec\/api/
end
