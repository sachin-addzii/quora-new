class Question < ApplicationRecord

  validates :title, presence: true, uniqueness: true

	has_many :answers
	belongs_to :user
	belongs_to :topic
end
