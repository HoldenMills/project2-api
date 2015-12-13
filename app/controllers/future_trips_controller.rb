class FutureTripsController < ApplicationController

  def create
    @future_trip = FutureTrip.new(future_trip_params)

    # respond_to do |format|
    if @future_trip.save
      # format.html { redirect_to @future_trip, notice: 'Future Trip was successfully created.' }
      # format.js   {}
      format.json { render json: @future_trip, status: :created, location: @future_trip
      }
    else
      # format.html { render action: "new" }
      format.json { render json: @future_trip.errors, status: :unprocessable_entity }
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
      if @future_trip.update(future_trip_params)
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

  def future_trip_params
    params.require(:park).permit(:park_id,
                                        :profile_id,
                                        :reason,
                                        :date_end,
                                        :date_begin
    )
  end
end
