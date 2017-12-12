module Forecast
  class Base

    # Requires a sub_domain, email, and password.
    # Specifying headers is optional, but useful for setting a user agent.
    def initialize(options={})
      options.assert_valid_keys(:email, :password, :sub_domain, :headers, :ssl)
      options.assert_required_keys(:email, :password, :sub_domain)
      @email        = options[:email]
      @password     = options[:password]
      @sub_domain   = options[:sub_domain]
      @headers      = options[:headers]
      @ssl          = options[:ssl]
      configure_base_resource
    end

    # Below is a series of proxies allowing for easy
    # access to the various resources.

    # Clients
    def clients
      Harvest::Resources::Client
    end

    # People
    def people
      Harvest::Resources::Person
    end

    # Projects
    def projects
      Harvest::Resources::Project
    end


    # Assignments
    def assignments
      Harvest::Resources::Assignment
    end

    # MileStones
    def milestones
      Harvest::Resources::Milestone
    end

    private

      # Configure resource base class so that
      # inherited classes can access the api.
      def configure_base_resource
        ForecastResource.site     = "http#{'s' if @ssl}://#{@sub_domain}.#{Forecast::ApiDomain}"
        ForecastResource.user     = @email
        ForecastResource.password = @password
        ForecastResource.headers.update(@headers) if @headers.is_a?(Hash)
        load_resources
      end

      # Load the classes representing the various resources.
      def load_resources
        resource_path = File.join(File.dirname(__FILE__), "resources")
        Harvest.load_all_ruby_files_from_path(resource_path)
      end

  end
end
