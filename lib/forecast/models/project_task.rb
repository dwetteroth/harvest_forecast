require 'harvest_forecast/forecast/forecast'

module Forecast
  module Base
    module Model
      class Project_task < Response::base
        attr_reader :id, :billable, :is_active,
                    :created_at, :updated_at,
                    :hourly_rate, :budget, :task

        def initialize(json)
          super(json)
          @task                     = parse(@task, Task)

        end
      end
    end
  end
end
