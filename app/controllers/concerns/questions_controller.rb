class QuestionController < ApplicationController

  def index
    @questions = Question.all
    render :index
  end

end
