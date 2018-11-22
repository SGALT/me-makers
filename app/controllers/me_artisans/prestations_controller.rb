class MeArtisans::PrestationsController < ApplicationController
  before_action :set_prestation, only: [:edit, :update]

  def index
    @prestations = Prestation.where(artisan: current_user)
  end

  def edit
  end

  def update
    @prestation.update(prestation_params)
    redirect_to prestation_path(@prestation)
  end

  private

  def prestation_params
    params.require(:prestation).permit(:title, :description, :workforce, :material, :price)
  end

  def set_prestation
    @prestation = Prestation.find(params[:id])
  end
end
