class ParksController < OpenReadController
  def create
    @park = Park.new(park_params)
    if @park.save
      render json: @park, status: :created, location: park_url
    else
      render json: @park.errors, status: :unprocessable_entity
    end
  end

  def show
    layout 'standard'
    @park = Park.find(params[:id])
      render json: @park
  end

  def index
    @parks = Park.all
    render json: @parks
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

  def future_trip_params
    params.require(:park_params).permit(:park_id,
                                        :name,
                                        :designation,
                                        :state,
                                        :year_authorized
)
  end

end
