# Gems
require "rubygems"
require "activeresource"
require "active_resource_throttle"
require 'faraday'


module Forecast
  VERSION   = "0.0.3"
  ApiDomain = "https://api.forecastapp.com"

  # Class method to load all ruby files from a given path.
  def self.load_all_ruby_files_from_path(path)
    Dir.foreach(path) do |file|
      require File.join(path, file) if file =~ /\.rb$/
    end
  end

end


# Plugins
PluginPath = File.join(File.dirname(__FILE__), "forecast", "plugins")
Forecast.load_all_ruby_files_from_path(PluginPath)

# Base
require File.join(File.dirname(__FILE__), "forecast", "base")
require File.join(File.dirname(__FILE__), "forecast", "forecast_resource")

# Shortcut for Forecast::Base.new
def Forecast(options={})
  Forecast::Base.new(options)
end
