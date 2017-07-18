class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :question
  has_many :upvoteas
  has_many :downvoteas
  validates :content, presence: true
end
