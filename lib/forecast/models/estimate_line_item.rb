require 'harvest_forecast/forecast/forecast'

module Forecast
  module Base
    module Model
      class Estimate_line_item < Response::base
        attr_reader :id, :kind, :description, :quantity, :unit_price, :amount,
                    :taxed, :taxed2
      end
    end
  end
end
