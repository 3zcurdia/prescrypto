# frozen_string_literal: true

require 'net/http'
require 'json'
require 'prescrypto/configuration'
require 'prescrypto/version'
require 'prescrypto/request'
require 'prescrypto/response'
require 'prescrypto/client'
require 'prescrypto/rest'

module Prescrypto
  class Error < StandardError; end

  class InvalidRequestError < StandardError; end

  class InvalidResponseError < StandardError; end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield(configuration)
  end

  def self.client(token)
    Rest.new(Client.new(auth_token: token))
  end
end
