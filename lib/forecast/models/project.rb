require 'harvest_forecast/forecast/forecast'

module Forecast
  module Base
    module Model
      class Project < Response::base
        attr_reader :project_id, :name, :code, :is_active, :is_billable,
                    :is_fixed_fee, :bill_by, :budget, :budget_by,
                    :notify_when_over_budget,
                    :over_budget_notification_percentage, :show_budget_to_all,
                    :created_at, :updated_at, :starts_on, :ends_on,
                    :over_budget_notification_date, :notes, :cost_budget,
                    :cost_budget_include_expenses, :hourly_rate, :fee,
                    :client

        def initialize(json)
          super(json)

          @client       = parse(@client, Client)

        end
      end
    end
  end
end
