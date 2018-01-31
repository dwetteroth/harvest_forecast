require 'harvest_forecast/forecast/forecast'

module Forecast
  module Base
    module Model
      class Contact < Response::base
        attr_reader :id, :title, :first_name, :last_name, :email,
                    :phone_office, :phone_mobile, :fax, :created_at,
                    :updated_at, :client

        def initialize(json)
          super(json)

          @client       = parse(@client, Client)

        end
      end
    end
  end
end
