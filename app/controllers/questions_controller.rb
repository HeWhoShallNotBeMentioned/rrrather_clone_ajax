class QuestionsController < ApplicationController

  def index
    @questions = Question.all
    render :index
  end

  def new
    @question = Question.new
    render :new
  end

  def create
    @question.new(question_params)
  end

  private
  def question_params
    params.require(:question).permit(:option1, :option3, :vote1, :vote2)
  end
end
