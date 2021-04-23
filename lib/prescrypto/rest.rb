# frozen_string_literal: true

require 'prescrypto/rest/basic_drugs'
require 'prescrypto/rest/clinics'
require 'prescrypto/rest/hospitals'
require 'prescrypto/rest/medications'
require 'prescrypto/rest/medics'
require 'prescrypto/rest/patients'
require 'prescrypto/rest/prescriptions'

module Prescrypto
  class Rest
    # API v1
    # include Prescrypto::Rest::BasicDrugs
    # include Prescrypto::Rest::Clinics
    # include Prescrypto::Rest::Medications
    # include Prescrypto::Rest::Medics
    # include Prescrypto::Rest::Patients
    # include Prescrypto::Rest::Presciptions

    # API v2
    include Prescrypto::Rest::Hospitals
    include Prescrypto::Rest::Medications
    include Prescrypto::Rest::Medics
    include Prescrypto::Rest::Patients
    include Prescrypto::Rest::Presciptions

    def initialize(client)
      @client = client
    end

    # POST /api/v2/contact/
    def contact_create(_payload = {})
      client.post(path: '/api/v2/contact/')
    end

    # POST /api/v2/indication/autocomplete/
    def indication_autocomplete_create(_payload = {})
      client.post(path: '/api/v2/indication/autocomplete/')
    end

    # GET /api/v2/memberships/{hospital_pk}/
    def memberships(hospital_pk)
      client.get(path: "/api/v2/memberships/#{hospital_pk}")
    end

    # GET /rest-auth/user/
    def authenticated_user
      client.get(path: '/rest-auth/user/')
    end

    private

    attr_reader :client
  end
end
