class ProfilesController < ApplicationController
  def create
    @profile = Profile.new(profile_params)
    if @profile.save
      render json: @profile, status: :created, location: profile_url
    else
      render json: @profile.errors, status: :unprocessable_entity
    end
  end

  def show
    @profile = Profile.find(params[:id])
    render json: @profile
  end

  def index
    @profiles = Profile.all
    render json: @parks
  end

  def update
    @profile = Profile.find(params[:id])
    if @profile.update(profile_params)
      head :no_content
    else
      render json: @profile.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @profile = Profile.find(params[:id])
    @profile.destroy

    head :no_content
  end

  # def profile_params
  #   params.require(:username).permit(:username)
  # end

  def set_profile
    @profile = Profile.find(params[:id])
  end

  private :set_profile
end
