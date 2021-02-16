class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :validatable
  MAX_LENGTH_EMAIL = 50
  MAX_LENGTH_PASSWORD = 50

  validates :email, presence: true, length: { maximum: MAX_LENGTH_EMAIL }
  validates :password, presence: true, length: { maximum: MAX_LENGTH_PASSWORD }

  has_many :checklists
  has_many :audits

  
end
