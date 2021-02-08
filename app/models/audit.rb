class Audit < ApplicationRecord
  belongs_to :checklist
  belongs_to :user
  has_many :responses, dependent: :destroy

  accepts_nested_attributes_for :responses, allow_destroy: true
end
