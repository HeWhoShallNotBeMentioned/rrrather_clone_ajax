class Question < ActiveRecord::Base
  validates :option1, :presence => true
end
