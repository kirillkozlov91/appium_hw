require 'cucumber'
require 'appium_lib'
require 'rspec'
require 'pry'

require_relative 'movies'
require_relative 'common_actions'

APP_PATH = ENV['APP'] ||  File.join(File.dirname(__FILE__), "..", "..", "Movies.app")
DEFAULT_TIMEOUT = 20

def caps
  { caps:       { deviceName: (ENV['DEVICE'] || "iPhone 6"),
                  platformName: 'iOS',
                  platformVersion: (ENV['SDK'] || '8.4'),
                  app: APP_PATH,
                  bundleId: 'de.tum.in.www1.ios15.Movies',
                  locationServicesEnabled: true,
                  locationServicesAuthorized: true,
                  newCommandTimeout: '36000'},
    appium_lib: { wait: DEFAULT_TIMEOUT,
                  debug: false } }
end

Appium::Driver.new(caps)
Appium.promote_appium_methods Movies
Appium.promote_appium_methods CommonActions

World do
  Movies.new
end

