class ArtisansController < ApplicationController
  def index
    @artisans = User.where(artisan: true)
  end
end
