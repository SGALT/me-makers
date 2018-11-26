class PrestationsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "prestation_#{params[:prestation_id]}"
  end
end
