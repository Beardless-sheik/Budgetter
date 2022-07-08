class PaymentsController < ApplicationController
  def index
    @header_description = 'PAYMENTS'
    @category = Category.find(params[:category_id])
    @payments = @category.payment
  end

  def new
    @header_description = 'PAYMENTS'
    @categories_available = Category.all
  end
end
