class Wine < ApplicationRecord
  has_many :loves, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :users, through: :loves
end
