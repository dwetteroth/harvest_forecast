require 'harvest_forecast/forecast/forecast'

module Forecast
  module Base
    module Model
      class Project_user_assignment < Response::base
        attr_reader :id, :project_user_assignment, :is_active,
                    :is_project_manager, :hourly_rate, :budget, :user,
                    :created_at, :updated_at

        def initialize(json)
          super(json)
          @project_user_assignment  = parse(project_user_assignment, Project_user_assignment)
          @user                     = parse(@user, User)

        end
      end
    end
  end
end
