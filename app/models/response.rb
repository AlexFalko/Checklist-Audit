class Response < ApplicationRecord
  enum answer: { yes: 1, no: 0, no_data: 2 }
  belongs_to :question
  belongs_to :audit
end
