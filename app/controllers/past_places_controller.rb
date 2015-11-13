class PastPlacesController < ApplicationController
def create
    @past_place = Past_place.new(park_params)
    if @album.save
      render json: @past_place, status: :created, location: past_place_url
    else
      render json: @past_place.errors, status: :unprocessable_entity
    end
  end

  def show
    @past_place = Past_place.find(params[:id])
      render json: @past_place
  end

  def index
    @past_places = Past_place.all
    render json: @past_place
  end

  def update
    @past_place = Past_place.find(params[:id])
      if @park.update(past_place_params)
        head :no_content
      else
        render json: @past_place.errors, status: :unprocessable_entity
      end
  end

  def destroy
    @past_place = Park.find(params[:id])
    @past_place.destroy
    head :no_content
  end
end
