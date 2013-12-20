class CollegeWishList < ActiveRecord::Base
  attr_accessible :coaching_staff_url, :college_city, :college_main_url, :college_name, :college_state, :college_street_address, :college_zip, :comments, :head_coach_email, :head_coach_name, :major_offered, :mascot, :special_teams_coach_email, :special_teams_coach_name, :team_url
end
