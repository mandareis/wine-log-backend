class Wine < ApplicationRecord
  has_many :loves
  has_many :comments, dependent: :destroy
  has_many :users, through: :loves
end
