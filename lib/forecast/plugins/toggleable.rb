# Adds toggability to a harvest resource.
module Forecast
  module Plugins
    module Toggleable

      def toggle
        put(:toggle)
      end

    end
  end
end
