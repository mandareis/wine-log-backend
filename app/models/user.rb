class User < ApplicationRecord
  has_many :loves
  has_many :comments, dependent: :destroy
  has_many :wines, through: :loves
end
