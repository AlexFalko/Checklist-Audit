class Checklist < ApplicationRecord
  validates :title, :description, presence: true
  validates :title, length: { maximum: 40 }
  belongs_to :user
end
