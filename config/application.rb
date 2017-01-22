require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ReactRails5
  class Application < Rails::Application
    config.generators do |g|
      g.stylesheets true
      g.javascripts false
      g.helper false
      g.template_engine :erb
      g.test_framework :rspec, view_specs: false, helper_specs: false, fixture: true
      g.fixture_replacement :factory_girl, dir: "spec/factories"
    end
  end
end
