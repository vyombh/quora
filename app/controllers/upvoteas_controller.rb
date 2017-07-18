class UpvoteasController < ApplicationController
	def upvoteToggleAnswer
		ans = params[:answer]
		@answer = Answer.find(ans);
		@upvotea = Upvotea.where(answer_id:ans,user_id:current_user.id).first
		upvotea = @upvotea
		@downvotea = Downvotea.where(answer_id:ans,user_id:current_user.id).first
		downvotea = @downvotea
		if upvotea
			upvotea.destroy
		else
			if upvotea
				upvotea.destroy
			end
			upvotea = Upvotea.new
			upvotea.answer_id = ans
			upvotea.user_id = current_user.id
			upvotea.save
		end

		respond_to do |format|
			format.js {}
			format.html{return redirect_to '/'}
		end
	end
end
