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

    @artisans = User.where.not(latitude: nil, longitude: nil)

    @markers = @artisans.map do |artisan|
      {
        lng: artisan.longitude,
        lat: artisan.latitude,
        infoWindow: { content: render_to_string(partial: "/artisans/map_window", locals: { artisan: artisan }) }

      }
    end
  end
end
