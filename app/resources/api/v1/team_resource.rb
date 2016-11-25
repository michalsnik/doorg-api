module Api
  module V1
    class TeamResource < JSONAPI::Resource
      attributes :name
      has_many :spaces
      has_many :users
    end
  end
end
