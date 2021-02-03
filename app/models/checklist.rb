class Checklist < ApplicationRecord
  belongs_to :user
  has_many :questions, dependent: :destroy
  accepts_nested_attributes_for :questions

  validates :title, :description, presence: true
  validates :title, length: { maximum: 40 }
end
