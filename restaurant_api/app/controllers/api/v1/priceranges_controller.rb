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
      render json: @pricerange, status: :created, location: api_v1_Priceranges_url(@pricerange)
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
      @pricerange = Pricerange.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pricerange_params
      params.require(:pricerange).permit(:minimum, :maximum)
    end
end
