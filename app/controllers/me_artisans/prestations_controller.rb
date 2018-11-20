class MeArtisans::PrestationsController < ApplicationController
  before_action :set_prestation, only: [:edit]

  def index
    @prestations = Prestation.all
  end

  def edit
  end

  def update
    @prestation.update(prestation_params)
    redirect_to prestations_path(@prestation)
  end

  private

  def prestation_params
    params.require(:prestation).permit(:title, :description, :workforce, :materials, :price)
  end

  def set_prestation
    @prestation = Prestation.find(params[:id])
  end
end
