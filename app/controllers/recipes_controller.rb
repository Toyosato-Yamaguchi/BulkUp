class RecipesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]
  before_action :move_to_index, only:[:edit, :update, :destroy]

  def index
    @recipes = Recipe.includes(:user).order("created_at DESC")
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(product_params)
    if @recipe.save
      redirect_to root_path
    else
      render :new
    end
  end
  
  private

  def product_params
    params.require(:recipe).permit(:image, :recipe_name, :cooking_metohd, :cooking_time_id, :ingredients, :food_weight).merge(user_id: current_user.id)
  end

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  def move_to_index
    unless current_user == @recipe.user
     redirect_to root_path
    end
  end
end