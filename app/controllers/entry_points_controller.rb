class EntryPointsController < ApplicationController
  before_action :find_parking

  # def index
  #   @entry_points = @parking.entry_points
  # end

  # def show
  #   @entry_point = @parking.entry_points.find(params[:id])
  # end

  def new
    @entry_point = @parking.entry_points.new
  end

  def create
    @entry_point = @parking.entry_points.new(entry_params)
    respond_to do |format|
      if @entry_point.save
        format.html { redirect_to parking_url(@parking), notice: "Entry Point was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @entry_point = @parking.entry_points.find(params[:id])
  end

  def update
    @entry_point = @parking.entry_points.find(params[:id])

    respond_to do |format|
      if @entry_point.update(entry_params)
        format.html { redirect_to parking_url(@parking), notice: "Entry Point was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  private

  def find_parking
    @parking = Parking.find(params[:parking_id])
  end

  def entry_params
    params.require(:entry_point).permit(:number)
  end
end
