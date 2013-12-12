class PointAfterAttempt < ActiveRecord::Base
  attr_accessible :date, :is_good
  belongs_to :user
end
