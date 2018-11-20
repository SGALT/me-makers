class ArtisansController < ApplicationController
  def index
    if params[:query].present?
      @artisans = User.search_by_specialty(params[:query])
    else
      @artisans = User.where(artisan: true)
    end
  end

  def show
    @artisan = User.find(params[:id])
  end
end
