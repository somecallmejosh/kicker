class Highlight < ActiveRecord::Base
  attr_accessible :comments, :date, :link, :opponent, :title

  def previous_highlight
    self.class.first(:conditions => ["title < ?", title], :order => "title desc")
  end

  def next_highlight
    self.class.first(:conditions => ["title > ?", title], :order => "title asc")
  end
end
