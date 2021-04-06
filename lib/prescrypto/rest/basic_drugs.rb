# frozen_string_literal: true

module Prescrypto
  class Rest
    module BasicDrugs
      # GET /api/v1/basic_drugs/
      def list_basic_drugs
        client.get(path: '/api/v1/basic_drugs/')
      end

      # POST /api/v1/basic_drugs/
      def create_basic_drug(payload = {})
        client.post(path: '/api/v1/basic_drugs/', body: payload.to_json)
      end

      # GET /api/v1/basic_drugs/{id}/
      def show_basic_drug(id)
        client.get(path: "/api/v1/basic_drugs/#{id}")
      end

      # PATCH /api/v1/basic_drugs/{id}/
      def update_basic_drug(id, payload = {})
        client.patch(path: "/api/v1/basic_drugs/#{id}", body: payload.to_json)
      end
    end
  end
end
