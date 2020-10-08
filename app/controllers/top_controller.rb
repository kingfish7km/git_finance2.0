class TopController < ApplicationController

 before_action :move_to_login, except: :index, :show_us, :show_contact, :show
 
 def index
 end

 def show_us
 end
 
 def show_contact
 end

 def show
 end
 
 def show_0
 end

 def show_1
 end

 def show_2
 end

 def show_3
 end

 private
 def move_to_login
    redirect_to action: :
  


end
