# frozen_string_literal: true

module Prescrypto
  class Rest
    module Presciptions
      # POST /api/v1/prescriptions/burn/{signature}/
      def burn_prescriptions_burn(signature, payload = {})
        client.post(path: "/api/v1/prescriptions/burn/#{signature}/", body: payload.to_json)
      end

      # POST /api/v1/prescriptions/reject/{signature}/
      def reject_prescription(signature, payload = {})
        client.post(path: "/api/v1/prescriptions/reject/#{signature}/", body: payload.to_json)
      end

      # GET /api/v1/prescriptions/search/
      def search_prescription(terms)
        client.get(path: '/api/v1/prescriptions/search/', query: { query: terms })
      end

      # GET /api/v1/rx-endpoint/
      def v1_rx_endpoints
        client.get(path: '/api/v1/rx-endpoint/')
      end

      # POST /api/v1/rx-endpoint/
      def v1_rx_endpoint_create(payload = {})
        client.post(path: '/api/v1/rx-endpoint/', body: payload.to_json)
      end

      # GET /api/v1/rx-endpoint/{id}/
      def v1_rx_endpoint(id)
        client.get(path: "/api/v1/rx-endpoint/#{id}/")
      end

      # GET /api/v2/rx/{signature}/
      def rx(signature)
        client.get(path: "/api/v2/rx/#{signature}")
      end

      # GET api/v2/rx/pdf/{signature}
      def rx_pdf(signature)
        client.get(path: "api/v2/rx/pdf/#{signature}")
      end

      # GET /api/v2/rx-endpoint/
      def list_rx_endpoints
        client.get(path: '/api/v2/rx-endpoint/')
      end

      # POST /api/v2/rx-endpoint/
      def create_rx_endpoint(payload = {})
        client.post(path: '/api/v2/rx-endpoint/', body: payload.to_json)
      end

      # GET /api/v2/rx-endpoint/{signature}/
      def show_rx_endpoint(signature)
        client.get(path: "/api/v2/rx-endpoint/#{signature}")
      end
    end
  end
end
