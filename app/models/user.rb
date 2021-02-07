class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :validatable
  has_many :checklists
  has_many :audits
end
