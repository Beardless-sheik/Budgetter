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

  def create
    new_payment = Payment.new(payment_params)
    p new_payment
    if new_payment.save
      redirect_to category_payments_path(params[:payment_category_id]), notice: 'Payment was successfully created.'
    else
      render :new, alert: 'Error occurred, please try again. Payment not saved'
    end
  end

  def destroy
    payment_to_delete = Payment.find(params[:id])
    if payment_to_delete.destroy
      redirect_to category_payments_path(params[:category_id]), notice: 'Payment was successfully deleted.'
    else
      redirect_to category_payments_path(params[:category_id]),
                  notice: "Error. Payment wasn't deleted, please try again!."
    end
  end

  private

  def payment_params
    params.permit(:Name, :Amount, :payment_category_id, :user_id).with_defaults(user_id: current_user.id)
  end
end
