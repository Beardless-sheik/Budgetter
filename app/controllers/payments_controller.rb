class PaymentsController < ApplicationController
  def index; end

  def new
    @categories_available = Category.all
  end
end
