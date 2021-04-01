# frozen_string_literal: true

module Prescrypto
  class Rest
    module Medics
      # GET /api/v1/medics/
      def v1_medics
      end

      # POST /api/v1/medics/
      def v1_medics_create(payload = {})
      end

      # GET /api/v1/medics/{id}/
      def v1_medic(id)
      end

      # PATCH /api/v1/medics/{id}/
      def v1_medics_update(id, payload = {})
      end

      # GET /api/v1/medics/validate/{medic_email}/
      def v1_medics_validate(medic_email)
      end

      # GET /api/v2/medics/
      def v2_medics
      end

      # POST /api/v2/medics/
      def v2_medics_create(payload)
      end

      # GET /api/v2/medics/{id}/
      def v2_medic(id)
      end

      # PATCH /api/v2/medics/{id}/
      def v2_medics_update(id, payload = {})
      end
    end
  end
end
