require 'harvest_forecast/forecast/forecast'

module Forecast
  module Base
    module Model
      class Invoice < Response::base
        attr_reader :id, :client_key, :number, :purchase_order, :amount,
                    :due_amount, :tax, :tax_amount, :tax2, :tax2_amount,
                    :discount, :discount_amount, :subject, :notes,
                    :period_start, :period_end, :issue_date, :due_date,
                    :sent_at, :paid_at, :closed_at, :created_at,
                    :updated_at, :paid_date, :currency, :client, :estimate,
                    :retainer, :creator

        def initialize(json)
          super(json)

          @client       = parse(@client, Client)
          @creator      = parse(@creator, User)

        end
      end
    end
  end
end
