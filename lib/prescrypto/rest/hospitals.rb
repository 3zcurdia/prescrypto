# frozen_string_literal: true

module Prescrypto
  class Rest
    module Hospitals
      # GET /api/v2/hospital/
      def list_hospitals
        client.get(path: '/api/v2/hospital/')
      end

      # POST /api/v2/hospital/
      def create_hospital(payload = {})
        client.post(path: '/api/v2/hospital/', body: payload.to_json)
      end

      # GET /api/v2/hospital/{id}/
      def show_hospital(id)
        client.get(path: "/api/v2/hospital/#{id}/")
      end

      # PATCH /api/v2/hospital/{id}/
      def update_hospital(id, _payload = {})
        client.patch(path: "/api/v2/hospital/#{id}/")
      end
    end
  end
end
