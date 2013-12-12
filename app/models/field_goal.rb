class FieldGoal < ActiveRecord::Base
  attr_accessible :date, :distance, :is_good
  belongs_to :user
  validates :distance, presence: true
end
