require 'harvest_forecast/forecast/forecast'

module Forecast
  module Base
    module Model
      class Expense < Response::base
        attr_reader :id, :spent_date, :notes, :total_cost, :units, :billable,
                    :receipt, :is_closed, :is_locked, :is_billed,
                    :locked_reason, :created_at,
                    :updated_at, :user, :client, :project,
                    :expense_category, :user_assignment, :invoice

        def initialize(json)
          super(json)
          @user             = parse(@user, User)
          @client           = parse(@client, Client)
          @project          = parse(@project, Project)
          @expense_category = parse(@expense_category, Expense_category)
          @user_assignment  = parse(@user_assignment, User_assignment)
          @invoice          = parse(@invoice, Invoice)
        end
      end
    end
  end
end
