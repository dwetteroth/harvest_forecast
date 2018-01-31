require 'harvest_forecast/forecast/forecast'

module Forecast
  module Base
    module Model
      class Expense_category < Response::base
        attr_reader :id, :name, :unit_name, :unit_price, :is_active,
                    :created_at, :updated_at

      end
    end
  end
end
