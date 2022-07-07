class User < ApplicationRecord
  has_many :category
  has_many :payment

  validates :Name, presence: true
end
