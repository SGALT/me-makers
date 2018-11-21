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

  private

  def set_prestation
    @prestation = Prestation.find(params[:id])
  end
end
