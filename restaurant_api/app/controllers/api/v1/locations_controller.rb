class Api::V1::LocationsController < ApplicationController
  before_action :set_location, only: [:show, :update, :destroy]

  # GET /locations
  def index
    @locations = Location.all

    render json: @locations
  end

  # GET /locations/1
  def show
    render json: @location
  end

  # POST /locations
  def create
    @location = Location.new(location_params)

    if @location.save
      render json: @location, status: :created, location: @location
    else
      render json: @location.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /locations/1
  def update
    if @location.update(location_params)
      render json: @location
    else
      render json: @location.errors, status: :unprocessable_entity
    end
  end

  # DELETE /locations/1
  def destroy
    @location.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_location
<<<<<<< HEAD
      @location = Location.find(params[:id])
=======
      @location = Restaurant.find(params[:loc_id])
>>>>>>> d6148530d1e5d1d12362cd27d2b362cc350a0ec9
    end

    # Only allow a trusted parameter "white list" through.
    def location_params
<<<<<<< HEAD
      params.require(:location).permit(:name)
=======
      params.require(:location).permit(:place, :description)
>>>>>>> d6148530d1e5d1d12362cd27d2b362cc350a0ec9
    end
end
