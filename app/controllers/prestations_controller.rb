class PrestationsController < ApplicationController
  before_action :set_prestation, only: [:show]

  def show
  end

  private

  def set_prestation
    @prestation = Prestation.find(params[:id])
  end
end
