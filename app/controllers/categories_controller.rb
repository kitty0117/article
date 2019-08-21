class CategoriesController < ApplicationController
  def index
    @categories=Category.all
  end

  def show
    @category=Category.find(params[:id])
  end

  def new
    @category= ::Category.new
  end

  def create
    @category=Category.new(category_params)
     if @category.save
       redirect_to categories_path
     else
       flash.now[:danger]='Categoryが見つかりません'
       render 'new'
     end
  end
  
  def edit
    @category=Category.find(params[:id])
  end 
  
  def update
    @category=Category.find(params[:id])
    if @category.update_attributes(category_params)
      flash[:success]="Update category"
      redirect_to @category
    else
      render 'edit'
    end 
  end 
  
  def destroy
    Category.find(params[:id]).destroy
    flash[:success]="Category destroy"
    redirect_to categories_url
  end 
  
  def category_params
    params.require(:category).permit(:title,:wrapup)
  end 
  
end
