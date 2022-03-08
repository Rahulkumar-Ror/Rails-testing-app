class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
  end
   
  def create
    @category = Category.new(category_params)
    if @category.save!
      redirected_to categories_index_path
    else
      render :new
    end
  end

  def edit
  end

  private

  def category_params
  params.require(:category).permit(:name)
  end
end
