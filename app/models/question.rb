class Question < ApplicationRecord
  MIN_LENGTH_TITLE = 12
  MAX_LENGTH_TITLE = 40

  validates :title, :description, presence: true
  validates :title, length: { in: MIN_LENGTH_TITLE..MAX_LENGTH_TITLE }
  
  belongs_to :checklist
  has_many :responses, dependent: :destroy

end
