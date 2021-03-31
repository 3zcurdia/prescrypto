# frozen_string_literal: true

module Prescrypto
  class Response < Result
    def initialize(http_response)
      super(http_response, nil)
      parsed_body
    end

    def successful?
      value.is_a?(Net::HTTPSuccess) && super
    end

    def parsed_body
      return unless value.body

      @parsed_body ||= safe_parse(value.body)
    end

    private

    def safe_parse(body)
      JSON.parse(body, symbolize_names: true)
    rescue JSON::ParserError
      error = InvalidResponseError.new(description: 'Invalid JSON body')
    end
  end
end
