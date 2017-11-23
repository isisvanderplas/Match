class AddUserToTeamMember < ActiveRecord::Migration[5.1]
  def change
    add_reference :team_members, :user, foreign_key: true
  end
end
