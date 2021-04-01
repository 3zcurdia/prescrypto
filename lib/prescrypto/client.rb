# frozen_string_literal: true

module Prescrypto
  class Client
    def initialize(auth_token: nil)
      @base_uri = URI.parse(Prescrypto.configuration.api_url)
      @auth_token = auth_token || Prescrypto.configuration.auth_token
    end

    def get(path:, query: nil)
      request(method: :get, path: path, query: query)
    end

    def post(path:, body: nil)
      request(method: :post, path: path, body: body)
    end

    def put(path:, body: nil)
      request(method: :put, path: path, body: body)
    end

    def patch(path:, body: nil)
      request(method: :patch, path: path, body: body)
    end

    def delete(path:)
      request(method: :delete, path: path)
    end

    private

    attr_reader :base_uri, :auth_token

    def request(method:, path:, body: nil, query: nil)
      uri_with_path = uri_for(path, query)
      Request.call(method: method, uri: uri_with_path, body: body, token: auth_token)
    end

    def uri_for(path, _query = nil)
      uri = base_uri.dup
      uri.path = path
      uri
    end
  end
end
