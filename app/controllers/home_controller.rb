class HomeController < ApplicationController
 before_action :authenticate_user!
  def index
  	respond_to do |format|
  		format.html{
  			@question=Question.new
  			@question_feed=Question.all.order(created_at: :desc)
  			@answer=Answer.new
  			@answer_feed=Answer.all.order(created_at: :desc)
  		}
  		format.js{   }	
  	end
  end
end
