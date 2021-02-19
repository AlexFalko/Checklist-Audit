class Response < ApplicationRecord
  MIN_LENGTH_DESCRIPTION = 2
  enum answer: { yes: 1, no: 0, no_data: 2 }
  belongs_to :question
  belongs_to :audit

  validates :answer, :description, presence: true
  validates :description, length: { minimum: MIN_LENGTH_DESCRIPTION }
end
