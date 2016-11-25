class AddTeamAssignment < ActiveRecord::Migration[5.0]
  def change
    create_table :team_assignments do |t|
      t.belongs_to :user, index: true
      t.belongs_to :team, index: true
      t.timestamps
    end
  end
end
