class CategoriesController < ApplicationController
  load_and_authorize_resource
  def index
    @categories = Category.all
    @recommendations = Recommendation.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
      @category = Category.new(category_params)
      if @category.save
        flash[:notice] = "Category successfully added!"
        redirect_to  categories_path
      else
        render :new
      end
    end

    def edit
    @category = Category.find(params[:id])
  end

  def update
    @category= Category.find(params[:id])
    if @category.update(category_params)
      flash[:notice] = "Category successfully updated!"
      redirect_to categories_path
    else
      render :edit
    end
  end

  def destroy
   @category = Category.find(params[:id])
   @category.destroy
   redirect_to categories_path
 end

    private
    def category_params
      params.require(:category).permit(:name, :description)
    end
end
