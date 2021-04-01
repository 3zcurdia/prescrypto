# frozen_string_literal: true

module Prescrypto
  class Rest
    module Presciptions
      # POST /api/v1/prescriptions/burn/{signature}/
      def prescriptions_burn_create(signature, payload = {})
      end

      # POST /api/v1/prescriptions/reject/{signature}/
      def prescriptions_reject_create(signature, payload = {})
      end

      # GET /api/v1/prescriptions/search/
      def prescriptions_search
      end
    end
  end
end
