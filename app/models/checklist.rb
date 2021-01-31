class Checklist < ApplicationRecord
  belongs_to :user
  has_many :questions

  validates :title, :description, presence: true
  validates :title, length: { maximum: 40 }
end
