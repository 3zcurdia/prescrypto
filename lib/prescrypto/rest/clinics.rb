# frozen_string_literal: true

module Prescrypto
  class Rest
    module Clinics
      # GET /api/v1/clinics/
      def list_clinics
        client.get(path: '/api/v1/clinics/')
      end

      # POST /api/v1/clinics/
      def create_clinic(payload = {})
        client.post(path: '/api/v1/clinics/', body: payload.to_json)
      end

      # GET /api/v1/clinics/{id}/
      def show_clinic(id)
        client.get(path: "/api/v1/clinics/#{id}/")
      end

      # PATCH /api/v1/clinics/{id}/
      def update_clinic(id, payload = {})
        client.patch(path: "/api/v1/clinics/#{id}/", body: payload.to_json)
      end
    end
  end
end
