class CreateCollegeWishLists < ActiveRecord::Migration
  def change
    create_table :college_wish_lists do |t|
      t.string :college_name
      t.string :college_main_url
      t.string :college_street_address
      t.string :college_city
      t.string :college_state
      t.string :college_zip
      t.boolean :major_offered
      t.string :team_url
      t.string :coaching_staff_url
      t.string :mascot
      t.string :head_coach_name
      t.string :head_coach_email
      t.string :special_teams_coach_name
      t.string :special_teams_coach_email
      t.text :comments

      t.timestamps
    end
  end
end
