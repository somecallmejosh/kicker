class AddStcemailIdToBios < ActiveRecord::Migration
  def change
    add_column :bios, :team_special_teams_coach_email, :string
  end
end
