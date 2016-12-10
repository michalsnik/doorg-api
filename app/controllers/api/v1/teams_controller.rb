module Api
  module V1
    class TeamsController < BaseController
      before_action :doorkeeper_authorize!

      def destroy
        team = Team.find(params[:id]).spaces.destroy_all
        super
      end
    end

  end
end
