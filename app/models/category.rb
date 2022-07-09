class Category < ApplicationRecord
  belongs_to :user
  has_many :payment

  validates :Name, :Icon, presence: true

  def check_payment_total
    total_amount = 0
    if payment.each
      payment.each do |payment|
        total_amount += payment.Amount
      end
    end
    total_amount
  end
end
