# frozen_string_literal: true

module Prescrypto
  class Rest
    module Medics
      # # GET /api/v1/medics/
      # def list_medics_v1
      #   client.get(path: '/api/v1/medics/')
      # end
      #
      # # POST /api/v1/medics/
      # def create_medics_v1(payload = {})
      #   client.post(path: '/api/v1/medics/', body: payload.to_json)
      # end
      #
      # # GET /api/v1/medics/{id}/
      # def show_medic_v1(id)
      #   client.get(path: "/api/v1/medics/#{id}/")
      # end
      #
      # # PATCH /api/v1/medics/{id}/
      # def update_medics_v1(id, payload = {})
      #   client.patch(path: "/api/v1/medics/#{id}/", body: payload.to_json)
      # end
      #
      # # GET /api/v1/medics/validate/{medic_email}/
      # def validate_medic(medic_email)
      #   client.get(path: "/api/v1/medics/validate/#{medic_email}/")
      # end

      # GET /api/v2/medics/
      def list_medics
        client.get(path: '/api/v2/medics/')
      end

      # POST /api/v2/medics/
      def create_medic(payload = {})
        client.post(path: "/api/v2/medics/#{id}/", body: payload.to_json)
      end

      # GET /api/v2/medics/{id}/
      def show_medic(id)
        client.get(path: "/api/v2/medics/#{id}/")
      end

      # PATCH /api/v2/medics/{id}/
      def update_medic(id, payload = {})
        client.patch(path: "/api/v2/medics/#{id}/", body: payload.to_json)
      end
    end
  end
end
