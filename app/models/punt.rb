class Punt < ActiveRecord::Base
  attr_accessible :date, :distance, :hangtime

  validates :distance, presence: true
end
