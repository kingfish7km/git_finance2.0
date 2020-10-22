class QuestionsController < ApplicationController
  
  def index
    @questions = Question.where(chapter_number: params[:chapter_number])
    render "index_#{params[:chapter_number]}"
  end
  
  def new
  end
  
  def create
    Question.create(chapter_number: 0, text: question_params[:text], user_id: current_user.id)
  end
  
  private
  def question_params
    params.permit(:text)
  end
  
end
