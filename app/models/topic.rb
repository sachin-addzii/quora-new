class Topic < ApplicationRecord

	validates :name, presence: true

	has_many :questions
	has_many :answers, through: :questions

	act_as_followee
end
