class Api::V1::PricerangesController < ApplicationController
  before_action :set_pricerange, only: [:show, :update, :destroy]

  # GET /priceranges
  def index
    @priceranges = Pricerange.all

    render json: @priceranges
  end

  # GET /priceranges/1
  def show
    render json: @pricerange
  end

  # POST /priceranges
  def create
    @pricerange = Pricerange.new(pricerange_params)

    if @pricerange.save
<<<<<<< HEAD
      render json: @pricerange, status: :created, location: api_v1_Priceranges_url(@pricerange)
=======
      render json: @pricerange, status: :created, location: @pricerange
>>>>>>> d6148530d1e5d1d12362cd27d2b362cc350a0ec9
    else
      render json: @pricerange.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /priceranges/1
  def update
    if @pricerange.update(pricerange_params)
      render json: @pricerange
    else
      render json: @pricerange.errors, status: :unprocessable_entity
    end
  end

  # DELETE /priceranges/1
  def destroy
    @pricerange.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pricerange
<<<<<<< HEAD
      @pricerange = Pricerange.find(params[:id])
=======
      @pricerange = Restaurant.find(params[:price_id])
>>>>>>> d6148530d1e5d1d12362cd27d2b362cc350a0ec9
    end

    # Only allow a trusted parameter "white list" through.
    def pricerange_params
<<<<<<< HEAD
      params.require(:pricerange).permit(:minimum, :maximum)
=======
      params.require(:pricerange).permit(:range, :description)
>>>>>>> d6148530d1e5d1d12362cd27d2b362cc350a0ec9
    end
end
