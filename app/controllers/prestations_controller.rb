class PrestationsController < ApplicationController
  before_action :set_prestation, only: %i[show]

  def show
  end

  def create
    @prestation = Prestation.new(presta_params)
    @prestation.title = @prestation.project.title
    @prestation.description = @prestation.project.description
    @prestation.save
    redirect_to project_path(params[:project_id])
  end

  private

  def set_prestation
    @prestation = Prestation.find(params[:id])
  end

  def presta_params
    params.permit(:project_id, :artisan_id)
  end
end
