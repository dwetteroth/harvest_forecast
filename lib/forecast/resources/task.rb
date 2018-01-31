module Forecast
  module Resources
    class Task < forecast::forecastResource
      include Forecast::Plugins::Toggleable

      # Get all tasks:
      def get_all_tasks(options={})
        include HTTParty
          format :json
          return %x{curl "https://api.harvestapp.com/v2/tasks"
            -H "Harvest-Account-ID: 548041"\
            -H "Authorization: Bearer 1212762.pt.yRJJmS8fri9WiRemC9lpsKsuhE8YEs_g8LFricFsYHQr1ZfvMkFEYuZzevEI5w6jF8MtTcQcpAehSCezlNh7ow"\
            -H "User-Agent: Harvest API Example"
          }
        end
      end

      def entries(options={})
        validate_options(options)
        entry_class = Forecast::Resources::Entry.clone
        entry_class.person_id = self.id
        entry_class.find :all, :params => format_params(options)
      end

      def expenses(options={})
        validate_options(options)
        expense_class = Forecast::Resources::Expense.clone
        expense_class.person_id = self.id
        expense_class.find :all, :params => format_params(options)
      end

      private

        def validate_options(options)
          if [:from, :to].any? {|key| !options[key].respond_to?(:strftime) }
            raise ArgumentError, "Must specify :from and :to as dates."
          end

          if options[:from] > options[:to]
            raise ArgumentError, ":start must precede :end."
          end

        end
        def format_params(options)
          ops = { :from => options[:from].strftime("%Y%m%d"),
                  :to   => options[:to].strftime("%Y%m%d")}
          ops[:project_id] = options[:project_id] if options[:project_id]
          return ops
        end

    end
  end
end
