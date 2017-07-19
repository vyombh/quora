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

  def profile_picture
    uploaded_file = params[:image]
    if uploaded_file==nil
      return redirect_to '/profile'
    end
    filename = SecureRandom.hex + "." +uploaded_file.original_filename.split('.')[1]
    filepath = Dir.pwd + "/public/uploads/" + filename
    File.open(filepath,'wb') do |file|
    file.write(uploaded_file.read())
    end
    current_user.profile_picture = filename
    current_user.save
    return redirect_to '/profile'
  end

end
