class CreateTeamings < ActiveRecord::Migration[5.1]
  def change
    create_table :teamings do |t|
      t.references :user, foreign_key: true
      t.references :team_member, foreign_key: true

      t.timestamps
    end
  end
end
