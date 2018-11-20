class ArtisansController < ApplicationController
  def index
    @artisans = User.where(artisan: true)
  end

  def show
    @artisan = User.find(params[:id])
  end
end
