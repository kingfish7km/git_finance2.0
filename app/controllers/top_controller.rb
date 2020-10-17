class TopController < ApplicationController

 before_action :authenticate_user!, only: [:show_0, :show_1, :show_2, :show_3]
 
 def index
 end

 def show_us
 end
 
 def show_contact
 end

 def show
 end
 
 def show_0
  @questions = Question.all
 end

 def show_1
 end

 def show_2
 end

 def show_3
 end

end
