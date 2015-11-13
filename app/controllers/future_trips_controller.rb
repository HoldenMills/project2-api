class FutureTripsController < ApplicationController
  def create
    @future_trip = Future_Trip.new(future_trip_params)
    if @future_trip.save
      render json: @future_trip, status: :created, location: future_trip_url
    else
      render json: @future_trip.errors, status: :unprocessable_entity
    end
  end

  def show
    @future_trip = Future_Trip.find(params[:id])
      render json: @future_trip
  end

  def update
    @future_trip = Future_Trip.find(params[:id])
      if @future_trip.update(future_trip_params)
        head :no_content
      else
        render json: @future_trip.errors, status: :unprocessable_entity
      end
  end

  def destroy
    @future_trip = Future_Trip.find(params[:id])
    @future_trip.destroy

    head :no_content
  end
end
