class Upvotea < ActiveRecord::Base
  belongs_to :user
  belongs_to :answer
end
