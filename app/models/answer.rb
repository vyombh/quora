class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :question
  has_many :upvoteas
  has_many :downvoteas
  has_many :comments
  validates :content, presence: true
  def upvote_answer user_id
    Upvotea.where(answer_id: id, user_id: user_id).length > 0
  end
  def classStringAnswer user_id
    if upvote_answer user_id
      return "upvoted"
    else
      return "notupvoted"
    end
  end


  def downvote_answer user_id
    Downvotea.where(answer_id: id, user_id: user_id).length > 0
  end
  def classStringAnswerDownvote user_id
    if downvote_answer user_id
      return "downvoted"
    else
      return "notdownvoted"
    end
  end



end
