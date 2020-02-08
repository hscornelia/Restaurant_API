class Api::V1::CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :update, :destroy]

  # GET /categories
  def index
    @categories = Category.all

    render json: @categories
  end

  # GET /categories/1
  def show
    render json: @category
  end

  # POST /categories
  def create
    @category = Category.new(category_params)

    if @category.save
<<<<<<< HEAD
      render json: @category, status: :created, location: api_v1_categories_url(@category)
=======
      render json: @category, status: :created, location: @category
>>>>>>> d6148530d1e5d1d12362cd27d2b362cc350a0ec9
    else
      render json: @category.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /categories/1
  def update
    if @category.update(category_params)
      render json: @category
    else
      render json: @category.errors, status: :unprocessable_entity
    end
  end

  # DELETE /categories/1
  def destroy
    @category.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
<<<<<<< HEAD
      @category = Category.find(params[:id])
=======
      @category = Restaurant.find(params[:cat_id])
>>>>>>> d6148530d1e5d1d12362cd27d2b362cc350a0ec9
    end

    # Only allow a trusted parameter "white list" through.
    def category_params
<<<<<<< HEAD
      params.require(:category).permit(:category_name)
=======
      params.require(:category).permit(:type, :description)
>>>>>>> d6148530d1e5d1d12362cd27d2b362cc350a0ec9
    end
end
