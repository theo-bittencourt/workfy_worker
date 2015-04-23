require File.expand_path('../boot', __FILE__)

require "action_controller/railtie"
require "action_mailer/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module WorkfyWorker
  class Application < Rails::Application
    config.generators do |g|
      g.test_framework :rspec,
        fixtures:         true,
        view_specs:       false,
        helper_specs:     false,
        routing_specs:    false,
        controller_specs: false,
        request_specs:    false
      g.fixture_replacement :factory_girl, dir: 'spec/factories'
    end

    # ActionMailer Config
    config.action_mailer.default_url_options = {host: ENV['HOST']}
    config.action_mailer.delivery_method = :smtp
    config.action_mailer.perform_deliveries = true
    config.action_mailer.raise_delivery_errors = false
    config.action_controller.asset_host = ENV['HOST']
    # config.action_controller.default_asset_host_protocol = :relative
    config.i18n.default_locale = :'pt-BR'
    config.time_zone = 'Brasilia'
  end
end
