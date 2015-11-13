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
end
