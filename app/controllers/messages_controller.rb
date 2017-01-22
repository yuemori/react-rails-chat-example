class MessagesController < ApplicationController
  before_action :set_room, only: [:create]

  def index
    @messages = Message.where(room_id: params[:room_id])

    render json: @messages
  end

  def create
    @message = Message.new(message_params)
    @message.room = @room

    if @message.save
      head :created
    else
      head :bad_request
    end
  end

  private

  def set_room
    @room = Room.find(params[:room_id])
  end

  def message_params
    params.require(:message).permit(:content)
  end
end
