class Category < ApplicationRecord
  belongs_to :user
  has_many :payment

  validates :Name, :Icon, presence: true
end
