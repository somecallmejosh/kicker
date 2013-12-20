class RemoveReferencesFromBios < ActiveRecord::Migration
  def up
    remove_column :bios, :team_head_coach
    remove_column :bios, :team_head_coach_phone
    remove_column :bios, :team_head_coach_email
    remove_column :bios, :team_special_teams_coach
    remove_column :bios, :team_special_teams_coach_phone
    remove_column :bios, :team_special_teams_coach_email
    remove_column :bios, :primary_kicking_coach
    remove_column :bios, :primary_kicking_coach_phone
    remove_column :bios, :primary_kicking_coach_email
    remove_column :bios, :school_counselor_name
    remove_column :bios, :school_counselor_phone
    remove_column :bios, :school_counselor_email
  end

  def down
    add_column :bios, :school_counselor_email, :string
    add_column :bios, :school_counselor_phone, :string
    add_column :bios, :school_counselor_name, :string
    add_column :bios, :primary_kicking_coach_email, :string
    add_column :bios, :primary_kicking_coach_phone, :string
    add_column :bios, :primary_kicking_coach, :string
    add_column :bios, :team_special_teams_coach_email, :string
    add_column :bios, :team_special_teams_coach_phone, :string
    add_column :bios, :team_special_teams_coach, :string
    add_column :bios, :team_head_coach_email, :string
    add_column :bios, :team_head_coach_phone, :string
    add_column :bios, :team_head_coach, :string
  end
end
