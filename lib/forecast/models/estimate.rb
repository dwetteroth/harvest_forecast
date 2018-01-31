require 'harvest_forecast/forecast/forecast'

module Forecast
  module Base
    module Model
      class Estimate < Response::base
        attr_reader :id, :client_key, :number, :purchase_order, :amount,
                    :tax, :tax_amount, :tax2, :tax2_amount,
                    :discount, :discount_amount,
                    :subject, :notes, :issue_date, :sent_at,
                    :created_at, :updated_at, :accepted_at,
                    :declined_at, :currency, :client,
                    :creator, :line_items

        def initialize(json)
          super(json)

          @client       = parse(@client, Client)
          @creator      = parse(@creator, User)
          @line_items   = parse(@line_items, Estimate_line_item)

        end
      end
    end
  end
end
