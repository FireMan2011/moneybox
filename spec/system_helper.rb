# frozen_string_literal: true

# Load general RSpec Rails configuration
require 'rails_helper'

# Load configuration files and helpers
require 'capybara/rails'
require 'capybara/rspec'
# require 'support/capybara_drivers/cuprite_docker_host_driver'
# require 'support/capybara_drivers/cuprite_local_driver'
# require 'support/precompile_assets'
# require 'support/screenshots_path_fix'

Capybara.configure do |config|
  # config.server_host = '0.0.0.0'

  # config.server_port = 8899
  # config.app_host = 'http://localhost:8899'
  # config.server = :webrick

  # config.javascript_driver =
  #   ENV['NO_HEADLESS'] ? :cuprite_docker_host : :cuprite_local
  # config.default_driver = Capybara.javascript_driver

  # Default to 3 seconds (suitable for development).
  # On CI should be increased to reduce timeouts errors.
  config.default_max_wait_time =
    ENV.fetch('RAILS_CAPYABRA_DEFAULT_MAX_WAIT_TIME', 3).to_i
end

RSpec.configure do |config|
  # config.include RSpec::CapybaraHelpers, type: :system
  # config.include RSpec::PauseHelpers, type: :system
  # config.include RSpec::DownloadHelpers, type: :system

  # config.around do |example|
  #   RSpec::DownloadHelpers.clear_downloads

  #   example.run
  # end

  # Wait for maps/ajax complete loading.
  # FIXME: Could be done in better ways.
  config.after(:each, :wait_js_before_exit, type: :system) do
    sleep(2)
  end

  config.prepend_before(:each, type: :system) do
    # Use JS driver always
    driven_by Capybara.javascript_driver
  end
end
