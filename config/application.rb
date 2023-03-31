require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Phase4finalprojectBackend
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Include Faker configuration for seed data
    config.generators do |g|
      g.factory_bot false
      g.fixture_replacement :factory_bot, dir: "spec/factories"
      g.faker true
    end
     # Load custom Faker locale files
     config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}').to_s]
     config.i18n.available_locales = [:en]
    # config.i18n.fallbacks = true
    # Set default locale to en
     config.i18n.default_locale = :en

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
