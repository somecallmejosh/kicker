class StaticPagesController < ApplicationController
  def admin

  end
  def landing
    @image_sliders = ImageSlider.all
  end
  def kicker_list
    
  end
end
