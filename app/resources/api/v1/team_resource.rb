module Api
  module V1
    class TeamResource < JSONAPI::Resource
      attributes :name
      has_many :spaces
      has_many :users

      def self.records(options = {})
        user = options[:context][:current_user]
        user.teams
      end

      before_save do
        @model.users << context[:current_user] if @model.new_record?
      end
    end
  end
end
