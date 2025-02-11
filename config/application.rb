require_relative "boot"

require "rails/all"
Bundler.require(*Rails.groups)

if Rails.env.development? || Rails.env.test?
  Dotenv::Railtie.load
end

module RailsTales
  class Application < Rails::Application
    config.load_defaults 8.0

    config.autoload_lib(ignore: %w[assets tasks])

    config.i18n.default_locale = :pt
  end
end
