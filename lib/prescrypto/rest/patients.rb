# frozen_string_literal: true

module Prescrypto
  class Rest
    module Patients
      # GET /api/v1/patients/
      def v1_patients
      end

      # POST /api/v1/patients/
      def v1_patients_create(payload = {})
      end

      # GET /api/v1/patients/{id}/
      def v1_patient(id)
      end

      # PATCH /api/v1/patients/{id}/
      def v1_patients_update(id, payload = {})
      end

      # GET /api/v2/patient/
      def search_patient(_term)
        client.get('/api/v2/patient', query: { search: terms })
      end

      # GET /api/v2/patient/
      def v2_patients
      end

      # POST /api/v2/patient/
      def v2_patient_create(payload)
        client.post('/api/v2/patient', payload.to_json)
      end

      # GET /api/v2/patient/{id}/
      def v2_patient(id)
      end

      # PATCH /api/v2/patient/{id}/
      def v2_patient_update(id, payload = {})
        client.patch("/api/v2/patient/#{id}/", payload.to_json)
      end
    end
  end
end
