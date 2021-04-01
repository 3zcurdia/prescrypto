# frozen_string_literal: true

module Prescrypto
  class Rest
    module RxEndpoints
      # GET /api/v1/rx-endpoint/
      def v1_rx_endpoints
      end

      # POST /api/v1/rx-endpoint/
      def v1_rx_endpoint_create(payload = {})
      end

      # GET /api/v1/rx-endpoint/{id}/
      def v1_rx_endpoint(id)
      end

      # GET /api/v2/rx/{signature}/
      def v2_rx(signature)
      end

      # GET api/v2/rx/pdf/{signature}
      def v2_rx_pdf(signature)
      end

      # GET /api/v2/rx-endpoint/
      def v2_rx_endpoints
      end

      # POST /api/v2/rx-endpoint/
      def v2_rx_endpoint_create(payload)
      end

      # GET /api/v2/rx-endpoint/{signature}/
      def v2_rx_endpoint(signature)
      end
    end
  end
end
