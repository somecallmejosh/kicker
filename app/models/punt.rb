class Punt < ActiveRecord::Base
  attr_accessible :date, :distance, :hangtime
  belongs_to :user

  validates :distance, presence: true
end
