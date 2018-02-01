require 'harvest_forecast/forecast/forecast'

module Forecast
  module Base
    module Model
      class Company < Response::base
        attr_reader :base_uri, :full_domain, :name, :is_active, :week_start_day,
                    :wants_timestamp_timers, :time_format, :hours_minutes,
                    :plan_type, :expense_feature, :invoice_feature,
                    :estimate_feature, :approval_feature, :clock,
                    :decimal_symbol, :thousands_separator, :color_scheme
      end
    end
  end
end
