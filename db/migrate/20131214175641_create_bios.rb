class CreateBios < ActiveRecord::Migration
  def change
    create_table :bios do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.text :bio_content
      t.string :graduation_year
      t.string :height
      t.string :weight
      t.string :sprint_40_time
      t.string :vertical_jump
      t.string :bench_press
      t.string :squat
      t.string :GPA
      t.string :SAT_score
      t.string :ACT_score
      t.string :college_credits_earned
      t.string :image_link
      t.string :school_name
      t.string :school_url
      t.string :school_street
      t.string :school_city
      t.string :school_state
      t.string :school_zip
      t.string :team_head_coach
      t.string :team_head_coach_phone
      t.string :team_head_coach_email
      t.string :team_special_teams_coach
      t.string :primary_kicking_coach
      t.boolean :clearing_house_cleared

      t.timestamps
    end
  end
end
