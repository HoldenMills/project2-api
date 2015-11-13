class ParksController < OpenReadController
  def create
    @park = Park.new(park_params)
    if @album.save
      render json: @park, status: :created, location: park_url
    else
      render json: @park.errors, status: :unprocessable_entity
    end
  end

  def show
    @park = Park.find(params[:id])
      render json: @park
  end

  def index
    @parks = Park.all
    render json: @park
  end

  def update
    @park = Park.find(params[:id])
      if @park.update(park_params)
        head :no_content
      else
        render json: @park.errors, status: :unprocessable_entity
      end
  end

  def destroy
    @park = Park.find(params[:id])
    @park.destroy
    head :no_content
  end
end
