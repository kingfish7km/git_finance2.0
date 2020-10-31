class RepliesController < ApplicationController

 def index
     question = Question.where(id: params[:id])
     @replies = question.replies
 end

end
