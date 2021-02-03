class Question < ApplicationRecord
  belongs_to :checklist

#  validates :title, :description, presence: true
#   validates :title, length: { in: 12..40 }
end
