require 'harvest_forecast/forecast/forecast'

module Forecast
  module Base
    module Model
      class Project_user < Response::base
        attr_reader :id, :is_active,
                    :is_project_manager, :hourly_rate, :budget, :user,
                    :created_at, :updated_at

        def initialize(json)
          super(json)
          @user                     = parse(@user, User)

        end
      end
    end
  end
end
