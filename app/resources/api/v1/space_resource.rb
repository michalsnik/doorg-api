module Api
  module V1
    class SpaceResource < JSONAPI::Resource
      attributes :name
      belongs_to :team
    end
  end
end
