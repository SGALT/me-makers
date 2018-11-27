class PrestationsController < ApplicationController
  before_action :set_prestation, only: %i[show update accept decline]

  def show
  end

  def accept
    @prestation.project.prestations.where.not(id: params[:id]).each do |prestation|
      prestation.declined!
    end
    @prestation.booked!
    respond_to do |format|
      format.js # accept.js.erb
    end
  end

  def decline
    @prestation.declined!
    respond_to do |format|
      format.js # decline.js.erb
    end
  end

  def create
    @prestation = Prestation.new(presta_params)
    @prestation.title = @prestation.project.title
    @prestation.description = @prestation.project.description
    @prestation.save
    flash[:notice] = "Demande de devis envoyé!"
    redirect_to project_path(params[:project_id])
  end

  def update
    if @prestation.update(params_presta)
      redirect_to prestation_path(@prestation)
    else
      render :show
    end
  end

  private

  def set_prestation
    @prestation = Prestation.find(params[:id])
  end

  def presta_params
    params.permit(:project_id, :artisan_id)
  end

  def params_presta
    params.require(:prestation).permit(:project_id, :artisan_id, :review, :rating)
  end
end
