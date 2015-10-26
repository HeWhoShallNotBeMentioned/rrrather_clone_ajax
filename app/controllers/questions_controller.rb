class QuestionsController < ApplicationController

  def index
    @questions = Question.all
    render :index
  end

  def show
    @question = Question.find(params[:id])
  end


  def new
    @question = Question.new
    render :new
  end

  def create
    @question.new(question_params)
    if @question.save
      flash[:notice] = "Question successfully added!"
      redirect_to questions_path
    else
      render: new
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    if @question.update(question_params)
      flash[:notice] = "Question successfully updated!"
      redirect_to question_path(@question)
    else
      render :edit
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    flash[:notice] = "Question successfully deleted."
    redirect_to questions_path
  end


  private
  def question_params
    params.require(:question).permit(:option1, :option3, :vote1, :vote2)
  end
end
