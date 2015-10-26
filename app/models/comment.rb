class Comment < ActiveRecord::Base
  belongs_to :question

  validates :title, :presence => true
  validates :text, :presence => true
  validates :question_id, :presence => true
end
