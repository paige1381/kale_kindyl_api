class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :update, :destroy]

  # GET /recipes
  def index
    @recipes = Recipe.all
    render json: @recipes.to_json(include: :tag)
  end

  # GET /recipes/1
  def show
    render json: @recipe
  end

  # POST /recipes
  def create
    @recipe = Recipe.new(recipe_params)

    if @recipe.save
      render json: @recipe, status: :created
    else
      render json: @recipe.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /recipes/1
  def update
    if @recipe.update(recipe_params)
      render json: @recipe
    else
      render json: @recipe.errors, status: :unprocessable_entity
    end
  end

  # DELETE /recipes/1
  def destroy
    @recipe.destroy
  end

  def homeSnapshot
    @recipes = Recipe.order(:created_at).last(6)
    render json: @recipes
  end

  def entreeSnapshot
    @recipes = Recipe.order(:created_at).where('recipeType': 'Entree').last(8)
    render json: @recipes
  end

  def breakfastSnapshot
    @recipes = Recipe.order(:created_at).where('recipeType': 'Breakfast').last(8)
    render json: @recipes
  end

  def dessertSnapshot
    @recipes = Recipe.order(:created_at).where('recipeType': 'Dessert').last(8)
    render json: @recipes
  end

  def sideSnapshot
    @recipes = Recipe.order(:created_at).where('recipeType': 'Side').last(8)
    render json: @recipes
  end

  def drinkSnapshot
    @recipes = Recipe.order(:created_at).where('recipeType': 'Drink').last(8)
    render json: @recipes
  end

  def entree
    @recipes = Recipe.order(:created_at).where('recipeType': 'Entree')
    render json: @recipes
  end

  def breakfast
    @recipes = Recipe.order(:created_at).where('recipeType': 'Breakfast')
    render json: @recipes
  end

  def dessert
    @recipes = Recipe.order(:created_at).where('recipeType': 'Dessert')
    render json: @recipes
  end

  def side
    @recipes = Recipe.order(:created_at).where('recipeType': 'Side')
    render json: @recipes
  end

  def drink
    @recipes = Recipe.order(:created_at).where('recipeType': 'Drink')
    render json: @recipes
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def recipe_params
      params.require(:recipe).permit(:title, :image1, :image2, :image3, :desc1, :desc2, :desc3, :prep, :cook, :serves, :recipeType)
    end
end
