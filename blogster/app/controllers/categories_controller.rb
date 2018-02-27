# CATEGORY CONTROLLER
# MODEL: Category (:name)
class CategoriesController < ApplicationController
  before_action :find_category, only: %i[edit update destroy]

  # Generates an empty instance for Category model
  def new
    @category = Category.new
  end

  # Generates an instance for Category model with the parameters filled
  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to posts_path(category: @category.name)
    else
      render 'new'
    end
  end

  # Passthrough for getting the correct Category with before_action
  def edit; end

  def update
    if @category.update(category_params)
      redirect_to posts_path(category: @category.name)
    else
      render 'edit'
    end
  end

  # Obtains the correct Category with before_action and destroys it
  def destroy
    @category.destroy
    redirect_to root_path, notice: 'Category destroyed successfully!'
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end

  def find_category
    @category = Category.find(params[:id])
  end
end
