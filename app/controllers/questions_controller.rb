class QuestionsController < ApplicationController
  
  def index
    render template: "app/views/top/show_#{params[:chapter_number]}"
    @questions = Question.where(chapter_number: params[:chapter_number])
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
