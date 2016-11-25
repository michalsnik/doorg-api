# == Schema Information
#
# Table name: team_assignments
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  team_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_team_assignments_on_team_id  (team_id)
#  index_team_assignments_on_user_id  (user_id)
#

class TeamAssignment < ApplicationRecord
  belongs_to :user
  belongs_to :team
end
