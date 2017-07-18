class Question < ActiveRecord::Base
  belongs_to :user
   has_many :answers
   has_many :upvoteqs
   has_many :downvoteqs
  validates :content, presence: true
 
end
