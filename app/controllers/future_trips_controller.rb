#
class FutureTripsController < ApplicationController
  def create
    @future_trip = FutureTrip.new(future_trip)

    respond_to do |format|
      if @future_trip.save
        format.html { redirect_to @future_trip, notice: 'Future Trip was successfully created.' }
        # format.js   {}
        # render json: @future_trip, status: :created, location: @future_trip
      else
        # format.html { render action: "new" }
        format.json { render json: @future_trip.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @future_trip = FutureTrip.find(params[:id])
      render json: @future_trip
  end

  def index
    @future_trips = FutureTrip.all
    render json: @future_trips
  end

  def update
    @future_trip = FutureTrip.find(params[:id])
      if @future_trip.update(future_trip)
        head :no_content
      else
        render json: @future_trip.errors, status: :unprocessable_entity
      end
  end

  def destroy
    @future_trip = FutureTrip.find(params[:id])
    @future_trip.destroy

    head :no_content
  end

  private

  def future_params
    params.require(:future_trip).permit(:park_id,
                                        :reason,
                                        :date_end,
                                        :date_begin
    )
  end
end
