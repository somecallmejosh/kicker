class Bio < ActiveRecord::Base
  attr_accessible :ACT_score, :GPA, :SAT_score, :bench_press, :bio_content, :clearing_house_cleared, :college_credits_earned, :email, :first_name, :graduation_year, :height, :image_link, :last_name, :phone, :primary_kicking_coach, :school_city, :school_name, :school_state, :school_street, :school_url, :school_zip, :sprint_40_time, :squat, :team_head_coach, :team_head_coach_email, :team_head_coach_phone, :team_special_teams_coach, :vertical_jump, :weight
end
