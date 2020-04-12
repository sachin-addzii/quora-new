class Answer < ApplicationRecord

  validates :content, presence: true
  validates :content, uniqueness: { scope: [:question_id]}

	belongs_to :question
	belongs_to :user
end
