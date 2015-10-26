class Comment < ActiveRecord::Base
  validates :title, :presence => true
  validates :text, :presence => true
  validates :question_id, :presence => true
end
