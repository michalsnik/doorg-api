module Api
  module V1
    class TeamsController < BaseController
      before_action :doorkeeper_authorize!

      # before_action only: [:index] do
      #   doorkeeper_authorize!
      # end

      def index
        render json: serialize_collection(TeamResource, current_user.teams)
      end

      def create
        user_relation = { type: "users", id: current_user.id }
        params[:data][:relationships][:users][:data] << user_relation
        super
      end
    end

  end
end
