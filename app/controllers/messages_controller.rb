class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def create
    @messages = Message.new(message_params)
    @messages.save
    redirect_to root_path, notice: 'メッセージを保存しました！'
  end

  private
  def message_params
    params.require(:message).permit(:name,:body)
  end
end
