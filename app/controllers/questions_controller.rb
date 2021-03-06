class QuestionsController < ApplicationController
  
  def index
    @questions = Question.where(chapter_number: params[:chapter_number]).page(params[:page]).per(5)
    render "index_#{params[:chapter_number]}"
  end
  
  def new
    @question = Question.new
  end
  
  def show
    @question = Question.find(params[:id])
    @replies = @question.replies
  end
    
  def create
    Question.create(chapter_number: params[:chapter_number], text: question_params[:text], user_id: current_user.id)
  end
  
  private
  def question_params
    params.require(:question).permit(:chapter_number, :text, :user_id)
  end
  
end
