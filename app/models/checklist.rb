class Checklist < ApplicationRecord
  belongs_to :user
  has_many :questions, dependent: :destroy
  has_many :audits, dependent: :destroy
  accepts_nested_attributes_for :questions, allow_destroy: true
  COUNT_ITEM_PAGY = 10

  validates :title, :description, presence: true
  validates :title, length: { maximum: 40 }
end
