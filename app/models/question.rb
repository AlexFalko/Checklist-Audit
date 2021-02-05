class Question < ApplicationRecord
  validates :title, :description, presence: true
  validates :title, length: { in: 1..40 }
  
  belongs_to :checklist
  has_many :responses
end
