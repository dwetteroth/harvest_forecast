module Forecast
  # This is the base class from which all resource
  # classes inherit. Site and authentication params
  # are loaded into this class when a Forecast::Base
  # object is initialized.
  class ForecastResource < ActiveResource::Base
    include ActiveResourceThrottle

    # The harvest api will block requests in excess
    # of 40 / 15 seconds. Adds a throttle (with cautious settings).
    # Throttle feature provided by activeresource_throttle gem.
    self.throttle(:requests => 20, :interval => 30, :sleep_interval => 60)
  end
end
