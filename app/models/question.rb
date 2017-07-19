class Question < ActiveRecord::Base
  belongs_to :user
   has_many :answers
   has_many :upvoteqs
   has_many :downvoteqs
  validates :content, presence: true
  def upvote_question user_id
  	Upvoteq.where(question_id: id, user_id: user_id).length > 0
  end
  def classStringQuestion user_id
  	if upvote_question user_id
  		return "upvoted"
  	else
  		return "notupvoted"
  	end
  end


  def downvote_question user_id
  	Downvoteq.where(question_id: id, user_id: user_id).length > 0
  end
  def classStringQuestionDownVote user_id
  	if downvote_question user_id
  		return "downvoted"
  	else
  		return "notdownvoted"
  	end
  end


end
