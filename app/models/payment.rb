class Payment < ApplicationRecord
  belongs_to :user
  belongs_to :category

  validates :Name, :Amount, presence: true
  validates_numericality_of :Amount, on: :create
end
