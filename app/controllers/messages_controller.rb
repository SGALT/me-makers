class MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)
    @prestation = Prestation.find(params[:prestation_id])
    @message.prestation = @prestation
    @message.user = current_user
    if @message.save
      ActionCable.server.broadcast("prestation_#{@prestation.id}", {
        message_partial: render(
          partial: "message",
          locals: { message: @message, user_is_messages_author: false }
        ),
        author_id: current_user.id,
        message_id: "message_#{@message.id}"
      })
    else
      render "prestations/show"
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
