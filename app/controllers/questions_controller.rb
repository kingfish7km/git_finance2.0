class QuestionsController < ApplicationController
  
  def index
    @questions = Question.all
    
  end
  
  def new
  end
  
  def create_0
    Question.create(chapter_number: 0, text: question_params[:text], user_id: current_user.id)
  end
  
  private
  def question_params
    params.permit(:text)
  end
  
end
