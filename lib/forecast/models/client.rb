require 'harvest_forecast/forecast/forecast'

module Forecast
  module Base
    module Model
      class Client < Response::base
        attr_reader :id, :name, :is_active, :address, :created_at,
        :updated_at, :currency

      end
    end
  end
end
