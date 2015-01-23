require 'codeclimate-test-reporter'
CodeClimate::TestReporter.start

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  # include the API specs
  config.include RSpec::Rails::RequestExampleGroup, type: :request,
                                                    file_path: /spec\/api/

  # specs should run randomly.
  config.order = :random
  Kernel.srand config.seed
end
