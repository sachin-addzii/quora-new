class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable

  has_many :questions
  has_many :answers

  act_as_followee
  act_as_follower


  def topics
    followees.where(followee_type: 'Topic')
  end

  def following
    followees.where(followee_type: 'User')
  end

end
