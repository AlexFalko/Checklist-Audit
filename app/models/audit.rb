class Audit < ApplicationRecord
  belongs_to :checklist
  belongs_to :user
  has_many :responses, dependent: :destroy
end
