class MessagesController < ApplicationController
  def index
    @messages = Message.where(room_id: params[:room_id])

    render json: @messages
  end
end
