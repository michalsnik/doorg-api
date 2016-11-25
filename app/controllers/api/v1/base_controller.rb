module Api
  module V1
    class BaseController < ActionController::API
      include JSONAPI::ActsAsResourceController

      private

      def context
        { current_user: current_user }
      end

      def current_user
        if doorkeeper_token
          @current_user ||= User.find_by(id: doorkeeper_token.resource_owner_id)
        else
          nil
        end
      end

      def serialize_collection(resource_klass, collection)
        result = []
        collection.each do |item|
          result << resource_klass.new(item, context)
        end

        serializer = JSONAPI::ResourceSerializer.new(resource_klass)
        serializer.serialize_to_hash(result)
      end

    end
  end
end
