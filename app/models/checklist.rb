class Checklist < ApplicationRecord
  COUNT_ITEM_PAGY = 10
  MAX_LENGTH_TITLE = 40
  
  # validates :title, :description, presence: true
  # validates :title, length: { maximum: MAX_LENGTH_TITLE }

  belongs_to :user
  has_many :questions, dependent: :destroy
  has_many :audits, dependent: :destroy
  accepts_nested_attributes_for :questions, allow_destroy: true
end
