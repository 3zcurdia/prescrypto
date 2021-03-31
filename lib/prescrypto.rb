# frozen_string_literal: true

require 'prescrypto/version'
require 'prescrypto/client'
require 'prescrypto/request'
require 'prescrypto/response'

module Prescrypto
  class Error < StandardError; end

  class InvalidRequestError < StandardError; end

  class InvalidResponseError < StandardError; end

  Result = Struct.new(:value, :error) do
    def successful?
      error.nil?
    end
  end
end
