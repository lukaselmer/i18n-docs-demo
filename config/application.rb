require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module I18nDocsDemo
  class Application < Rails::Application
    # add yml path
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '*', '*.yml').to_s]
    # locals to support:
    config.i18n.available_locales = [:en,:de,:it,:fr]

    config.active_record.raise_in_transactional_callbacks = true
  end
end
