class Highlight < ActiveRecord::Base
  attr_accessible :comments, :date, :link, :opponent, :title
  belongs_to :user

  def previous_highlight
    self.class.first(:conditions => ["id < ?", id], :order => "id desc")
  end

  def next_highlight
    self.class.first(:conditions => ["id > ?", id], :order => "id asc")
  end

  validates :comments, presence: true
  validates :link, presence: true
  validates :title, presence: true
end
