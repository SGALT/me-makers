class MeArtisans::PrestationsController < ApplicationController
  def index
    @prestations = Prestation.all
  end
end
