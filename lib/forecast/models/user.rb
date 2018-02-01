require 'harvest_forecast/forecast/forecast'

module Forecast
  module Base
    module Model
      class User < Response::base
        attr_reader :id, :first_name, :last_name, :email, :telephone, :timezone,
                    :weekly_capacity, :has_access_to_all_future_projects,
                    :is_contractor, :is_admin,
                    :is_project_manager, :can_see_rates,
                    :can_create_projects, :can_create_invoices, :is_active,
                    :created_at, :updated_at, :default_hourly_rate,
                    :cost_rate, :roles, :avatar_url

      end
    end
  end
end
