class AddTeamToSpace < ActiveRecord::Migration[5.0]
  def change
    add_reference :spaces, :team, foreign_key: true
  end
end
