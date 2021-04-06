# frozen_string_literal: true

module Prescrypto
  class Rest
    module Patients
      # GET /api/v2/patient/
      def search_patient(terms)
        client.get(path: '/api/v2/patient/', query: { search: terms })
      end

      # GET /api/v2/patient/
      def list_patients
        client.get(path: '/api/v2/patient/')
      end

      # POST /api/v2/patient/
      def create_patient(payload)
        client.post(path: '/api/v2/patient/', body: payload.to_json)
      end

      # GET /api/v2/patient/{id}/
      def show_patient(id)
        client.get(path: "/api/v2/patient/#{id}/")
      end

      # PATCH /api/v2/patient/{id}/
      def update_patient(id, payload = {})
        client.patch(path: "/api/v2/patient/#{id}/", body: payload.to_json)
      end
    end
  end
end
