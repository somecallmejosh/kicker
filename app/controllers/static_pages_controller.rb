class StaticPagesController < ApplicationController
  def home
  	@field_goals = FieldGoal.all
  	@total_field_goals = FieldGoal.count(:conditions => { :is_good => true }) * 3
  	@field_goal_long = FieldGoal.maximum('distance', :conditions => {:is_good => true})

  	@point_after_attempts = PointAfterAttempt.all
  	@total_pats = PointAfterAttempt.count(:conditions => { :is_good => true })

  	@kickoffs = Kickoff.all
    @total_kickoff_yards = Kickoff.sum('distance')
    @kickoff_long = Kickoff.maximum('distance')

    @punts = Punt.all
    @punt_long = Punt.maximum('distance')

    @total_points = @total_field_goals + @total_pats

  end
  def bio
  end
end
