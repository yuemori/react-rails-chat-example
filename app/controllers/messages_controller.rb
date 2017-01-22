class MessagesController < ApplicationController
  before_action :set_room, only: [:create]

  def index
    @messages = Message.includes(:user).where(room_id: params[:room_id])

    render json: @messages, each_serializer: MessageSerializer
  end

  def create
    @message = Message.new(message_params)
    @message.room = @room
    @message.user = current_user

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
    params.require(:message).permit(:content, :user_id)
  end
end
