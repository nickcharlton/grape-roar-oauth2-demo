ENV['RAILS_ENV'] = 'test'

require "codeclimate-test-reporter"
CodeClimate::TestReporter.start

require File.expand_path('../../config/environment', __FILE__)

require 'rspec/rails'
RSpec.configure do |config|
  config.mock_with :rspec
  config.expect_with :rspec
  config.include RSpec::Rails::RequestExampleGroup, type: :request,
                                                    file_path: /spec\/api/

  config.before(:suite) do
    ActiveRecord::Migration.maintain_test_schema!
  end
end
