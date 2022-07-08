class CategoriesController < ApplicationController

  before_action :authenticate_user!, :except => [:splash]

  def index
    @header_description = 'CATEGORIES'
    @categories = Category.all
  end

  def new
    @header_description = 'CATEGORIES'
  end

  def create
    new_category = Category.new(category_params)
    if new_category.save
      redirect_to categories_path, notice: 'Category was successfully created.'
    else
      render :new, alert: 'Error occurred, please try again. Category not saved'
    end
  end
  
  def splash
  end

  private

  def category_params
    params.permit(:Name, :Icon, :user_id).with_defaults(user_id: current_user.id)
  end
end
