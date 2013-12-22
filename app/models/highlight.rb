class Highlight < ActiveRecord::Base
  attr_accessible :comments, :date, :link, :kick_type, :opponent, :title
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
  validates :kick_type, presence: true
end
