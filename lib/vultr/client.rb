require 'faraday'

module Vultr
  class Client
    BASE_URL = 'https://api.vultr.com/v2/'
    attr_reader :api_key, :adapter

    def initialize(api_key:, adapter: Faraday.default_adapter, stubs: nil)
      @api_key = api_key
      @adapter = adapter
      @stubs = stubs
    end

    def account
      AccountResource.new(self)
    end

    def applications
      ApplicationsResource.new(self)
    end

    def plans
      PlansResource.new(self)
    end

    def users
      UsersResource.new(self)
    end

    def connection
      @connection ||= Faraday.new do |conn|
        conn.url_prefix = BASE_URL
        conn.request :json
        conn.response :json, content_type: 'application/json'
        conn.adapter @adapter, @stubs
      end
    end

    def inspect
      "#<Vultr::Client>"
    end
  end
end

