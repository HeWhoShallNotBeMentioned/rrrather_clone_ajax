class CommentsController < ApplicationController
  def new
    @question = Question.find(params[:question_id])
    @comment = @question.comments.new
  end

  def create
    @question = Question.find(params[:question_id])
    @comment = @question.comments.new(comment_params)
    if @comment.save
      flash[:notice] = "Comment successfully added!"
      respond_to do |format|
        format.html { redirect_to question_path(@comment.question) }
        format.js
      end
    else
      render :new
    end
  end

  def edit
    @question = Question.find(params[:Question_id])
    @comment = Comment.find(params[:id])
  end

  def update
    @question = Question.find(params[:question_id])
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      flash[:notice] = "Comment successfully updated!"
      respond_to do |format|
        format.html { redirect_to question_path(@comment.question) }
        format.js
      end
    else
      render :edit
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    flash[:notice] = "Comment successfully deleted."
    redirect_to question_path(@comment.question)
  end

  private
  def comment_params
    params.require(:comment).permit(:title, :text)
  end

end
