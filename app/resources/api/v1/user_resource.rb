module Api
  module V1
    class UserResource < JSONAPI::Resource
      attributes :email, :first_name, :last_name, :password
      has_many :teams

      def fetchable_fields
        super - [:password]
      end
    end
  end
end
