class CategoriesController < ApplicationController
  def create
    @category = Category.create(
      name: params[:name],
    )
    render :show
  end
end
