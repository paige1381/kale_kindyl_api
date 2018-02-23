class IngredientCategoriesController < ApplicationController
  before_action :set_ingredient_category, only: [:show, :update, :destroy]

  # GET /ingredient_categories
  def index
    @ingredient_categories = IngredientCategory.all

    render json: @ingredient_categories.to_json(include: :ingredients)
  end

  # GET /ingredient_categories/1
  def show
    render json: @ingredient_category
  end

  # POST /ingredient_categories
  def create
    @ingredient_category = IngredientCategory.new(ingredient_category_params)
    @ingredient_category.recipe_id = params[:recipe_id]

    if @ingredient_category.save
      render json: @ingredient_category, status: :created
    else
      render json: @ingredient_category.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ingredient_categories/1
  def update
    if @ingredient_category.update(ingredient_category_params)
      render json: @ingredient_category
    else
      render json: @ingredient_category.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ingredient_categories/1
  def destroy
    @ingredient_category.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ingredient_category
      @ingredient_category = IngredientCategory.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ingredient_category_params
      params.require(:ingredient_category).permit(:title, :recipe_id, :note)
    end
end
