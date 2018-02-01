require 'harvest_forecast/forecast/forecast'

module Forecast
  module Base
    module Model
      class Project < Response::base
        attr_reader :id, :name, :billable_by_default, :default_hourly_rate,
                    :is_default, :is_active, :created_at, :updated_at
      end
    end
  end
end
