class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :questions
	has_many :answers
	has_many :upvoteqs
	has_many :comments
	has_many :downvoteqs
	has_many :upvoteas
	has_many :downvoteas
	has_many :comments
  	has_many :replies

end
