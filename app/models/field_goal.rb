class FieldGoal < ActiveRecord::Base
  attr_accessible :date, :distance, :is_good
  validates :distance, presence: true
end
