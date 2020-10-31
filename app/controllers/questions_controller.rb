class QuestionsController < ApplicationController
  
  def index
    @question = Question.new
    @questions = Question.where(chapter_number: params[:chapter_number])
    render "index_#{params[:chapter_number]}"
  end
  
  def new
    @question = Question.new
  end
  
  def show
    @question = Question.where(id: params[:id])
    @replies =　Reply.where(question_id: params[:id])
  end
    
  def create
    Question.create(chapter_number: params[:chapter_number], text: question_params[:text], user_id: current_user.id)
  end
  
  private
  def question_params
    params.require(:question).permit(:chapter_number, :text, :user_id)
  end
  
end
