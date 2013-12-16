class AddStcphoneIdToBios < ActiveRecord::Migration
  def change
    add_column :bios, :team_special_teams_coach_phone, :string
  end
end
