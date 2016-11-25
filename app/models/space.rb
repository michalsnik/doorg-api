# == Schema Information
#
# Table name: spaces
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  team_id    :integer
#
# Indexes
#
#  index_spaces_on_team_id  (team_id)
#
# Foreign Keys
#
#  fk_rails_b59bfe86d3  (team_id => teams.id)
#

class Space < ApplicationRecord
  belongs_to :team
end
