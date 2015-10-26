class Question < ActiveRecord::Base
  has_many :comments

  validates :option1, :presence => true
  validates :option2, :presence => true
end
