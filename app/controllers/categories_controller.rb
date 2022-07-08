class CategoriesController < ApplicationController
  def index; end

  def new
    @categories_available = Categories.all
  end
end
