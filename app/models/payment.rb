class Payment < ApplicationRecord
  belongs_to :user
  belongs_to :category

  validates :Name, :Amount, presence: true
end
