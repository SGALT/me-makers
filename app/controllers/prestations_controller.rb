class PrestationsController < ApplicationController
  before_action :set_prestation, only: %i[show]

  def show
  end

  def create
    @prestation = Prestation.new(presta_params)
    redirect_to project_path(params[:project_id])
  end

  private

  def set_prestation
    @prestation = Prestation.find(params[:id])
  end

private

  def presta_params
    params.permit(:project_id, :artisan_id)
  end
end
