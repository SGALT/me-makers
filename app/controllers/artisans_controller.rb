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
    @prestations = Prestation.where(artisan_id: @artisan)
    if @artisan.latitude != nil
      @markers = [{
          lng: @artisan.longitude,
          lat: @artisan.latitude,
          infoWindow: { content: render_to_string(partial: "/artisans/map_window", locals: { artisan: @artisan }) }
        }]
    else
      @markers = [{
          lng: 2.2945,
          lat: 48.8582,
          infoWindow: { content: render_to_string(partial: "/artisans/map_window", locals: { artisan: @artisan }) }
        }]
    end
  end
end
