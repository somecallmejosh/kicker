class StaticPagesController < ApplicationController
  def home
    @field_goals = FieldGoal.all
    @total_field_goals = FieldGoal.count(:conditions => { :is_good => true }) * 3
    @field_goal_long = FieldGoal.maximum('distance', :conditions => {:is_good => true})

    @field_goal_count = FieldGoal.count('is_good')
    @field_goals_made = FieldGoal.count(:conditions => { :is_good => true })
    @field_goal_percent = (@field_goals_made.to_f / @field_goal_count.to_f * 100).round(1)


    @point_after_attempts = PointAfterAttempt.all
    @total_pats = PointAfterAttempt.count(:conditions => { :is_good => true })

    @kickoffs = Kickoff.all
    @total_kickoff_yards = Kickoff.sum('distance')
    @kickoff_long = Kickoff.maximum('distance')
    @total_kicks = Kickoff.count('distance')
    @touchback_totals = Kickoff.count(:conditions => "distance > 60")
    @touchback_percentage = (@touchback_totals.to_f / @total_kicks.to_f * 100).round(1)

    @kickoff_avg = Integer(Kickoff.average('distance'))


    @punts = Punt.all
    @punt_long = Punt.maximum('distance')

    @total_points = Integer(@total_field_goals.to_f + @total_pats.to_f)
  end
  def bio

  end
  def admin

  end
end
