class DirectionsCategoriesController < ApplicationController
  before_action :set_directions_category, only: [:show, :update, :destroy]

  # GET /directions_categories
  def index
    @directions_categories = DirectionsCategory.all

    render json: @directions_categories
  end

  # GET /directions_categories/1
  def show
    render json: @directions_category
  end

  # POST /directions_categories
  def create
    @directions_category = DirectionsCategory.new(directions_category_params)
    @directions_category.recipe_id = params[:recipe_id]

    if @directions_category.save
      render json: @directions_category, status: :created
    else
      render json: @directions_category.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /directions_categories/1
  def update
    if @directions_category.update(directions_category_params)
      render json: @directions_category
    else
      render json: @directions_category.errors, status: :unprocessable_entity
    end
  end

  # DELETE /directions_categories/1
  def destroy
    @directions_category.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_directions_category
      @directions_category = DirectionsCategory.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def directions_category_params
      params.require(:directions_category).permit(:title, :recipe_id, :note)
    end
end
