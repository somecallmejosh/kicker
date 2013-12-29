class StaticPagesController < ApplicationController
  def admin
  	@awards = Award.order(:date)
  	@college_wish_lists = CollegeWishList.all
  	@field_goals = FieldGoal.order(:date)
  	@college_wish_lists = CollegeWishList.all
  	@highlights = Highlight.order('id ASC')
  	@kickoffs = Kickoff.order(:date)
  	@point_after_attempts = PointAfterAttempt.order(:date)
  	@punts = Punt.order(:date)
  	@references = Reference.all
  	@bios = Bio.all
  	respond_to do |format|
  	  format.html # index.html.erb
  	  format.json { render json: @awards }
  	end

  end
  def landing
    @image_sliders = ImageSlider.all
  end
  def kicker_list
    @bios = Bio.all
  end
end
