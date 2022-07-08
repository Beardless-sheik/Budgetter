class Payment < ApplicationRecord
  belongs_to :user
  belongs_to :category

  validates :Name, :Amount, presence: true
  validates_numericality_of :Amount, on: :create
  alias_attribute :payment_category_id, :category_id
end
