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

  def self.rest(token = nil)
    Rest.new(Client.new(auth_token: token || configuration.auth_token))
  end

  def self.deep_link(**args)
    args = args.slice(:token, :hospital_id, :patient_id, :patient_name, :patient_email, :patient_dob).compact
    "#{configuration.api_url}new/api_token/?#{URI.encode_www_form(args.merge(v2_redirect: true))}"
  end
end
