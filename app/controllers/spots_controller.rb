class SpotsController < ApplicationController
  before_action :find_parking

  # def index
  #   @spots = @parking.spots
  # end

  # def show
  #   @spot = @parking.spots.find(params[:id])
  # end

  def new
    @spot = @parking.spots.new
  end

  def create
    @spot = @parking.spots.new(spot_params)
    respond_to do |format|
      if @spot.save
        format.html { redirect_to parking_url(@parking), notice: "Spot was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @spot = @parking.spots.find(params[:id])
  end

  def update
    @spot = @parking.spots.find(params[:id])

    respond_to do |format|
      if @spot.update(spot_params)
        format.html { redirect_to parking_url(@parking), notice: "Spot was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  private

  def find_parking
    @parking = Parking.find(params[:parking_id])
  end

  def spot_params
    params.require(:spot).permit(:number)
  end
end
