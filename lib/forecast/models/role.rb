require 'harvest_forecast/forecast/forecast'

module Forecast
  module Base
    module Model
      class Role < Response::base
        attr_reader :id, :name, :created_at, :updated_at

      end
    end
  end
end
