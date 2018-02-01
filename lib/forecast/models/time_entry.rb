require 'harvest_forecast/forecast/forecast'

module Forecast
  module Base
    module Model
      class Project < Response::base
        attr_reader :id, :spent_date, :hours, :notes, :is_locked, :locked_reason,
                    :is_closed, :is_billed, :timer_started_at, :started_time,
                    :ended_time, :is_running,
                    :billable, :budgeted, :billable_rate, :cost_rate,
                    :created_at, :updated_at, :user,
                    :client, :project, :task, :user_assignment,
                    :task_assignment, :invoice, :external_reference

        def initialize(json)
          super(json)
          @user               = parse(@user, User)
          @client             = pares(@client, Client)
          @project            = parse(@project, Project)
          @task               = parse(@task, Task)
          @user_assignment    = parse(@user_assignment, User_task)
          @task_assignment    = parse(@task_assignment, Project_task)
          @invoice            = parse(@invoice, Invoice)
          @external_reference = parse(@external_reference, External_reference)
        end
      end
    end
  end
end
