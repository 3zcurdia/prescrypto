# frozen_string_literal: true

module Prescrypto
  class Client
    def initialize(base_url:, auth_token:)
      @uri = URI.parse(base_url)
      @auth_token = auth_token
    end

    def get(path:)
      request(method: :get, path: path)
    end

    def post(path:, body: nil)
      request(method: :post, path: path, body: body)
    end

    def put(path:)
      request(method: :put, path: path)
    end

    def patch(path:)
      request(method: :patch, path: path)
    end

    def delete(path:)
      request(method: :delete, path: path)
    end

    private

    attr_reader :uri, :auth_token

    def request(method:, path:, body: nil)
      Request.for(method: method, uri: uri_for(path), body: body, token: auth_token).call
    end

    def uri_for(path)
      uri_with_path = uri.dup
      uri_with_path.path = path
      uri_with_path
    end
  end
end
