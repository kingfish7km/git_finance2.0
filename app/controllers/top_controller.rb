class TopController < ApplicationController

 before_action :authenticate_user!, only: [:show]
 
 def index
 end

 def show_us
 end
 
 def show_contact
 end

 def show
 end
 
end
