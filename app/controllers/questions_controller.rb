class QuestionsController < ApplicationController
  
  def new
  end
  
  def create_0
    Questions.create(chapter_number: 0, text: question_params[:text], user_id: current_user.id)
  end
  
  
  
  
  
end
