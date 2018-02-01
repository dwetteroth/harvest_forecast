module Forecast
  VERSION   = "0.0.6"
  ApiDomain = "harvestapp.com"

  # Class method to load all ruby files from a given path.
  def self.load_all_ruby_files_from_path(path)
    Dir.foreach(path) do |file|
      require File.join(path, file) if file =~ /\.rb$/
    end
  end

end

# Gems
require "rubygems"
require "activeresource"
require "active_resource_throttle"
require "faraday"

# Plugins
# PluginPath = File.join(File.dirname(__FILE__), "forecast", "plugins")
# Harvest.load_all_ruby_files_from_path(PluginPath)

# Base
require File.join(File.dirname(__FILE__), "forecast", "base")
# require File.join(File.dirname(__FILE__), "forecast", "resources")

# Shortcut for Harvest::Base.new
#
# Example:
# Harvest(:email      => "jack@exampe.com",
#         :password   => "secret",
#         :sub_domain => "frenchie",
#         :headers    => {"User-Agent => "Harvest Rubygem"})
def Forecast(options={})
  Forecast::Base.new(options)
end
