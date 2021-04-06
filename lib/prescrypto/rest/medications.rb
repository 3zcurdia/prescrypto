# frozen_string_literal: true

module Prescrypto
  class Rest
    module Medications
      # GET /api/v2/medications/
      def list_medications
        client.get(path: '/api/v2/medications/')
      end

      # GET /api/v2/medications/{id}/
      def show_medication(id)
        client.get(path: "/api/v2/medications/#{id}/")
      end
    end
  end
end
