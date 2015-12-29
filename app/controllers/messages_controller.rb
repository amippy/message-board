class MessagesController < ApplicationController
  def index
    #メッセージをすべて取得する。
    @messages = Message.all
    @message =Message.new
  end

  def create
    @messages = Message.new(message_params)
    if @messages.save
    redirect_to root_path, notice: 'メッセージを保存しました！'
  else
    #メッセージが保存できなかった場合
    @messages = Message.all
    flash.now[:alert]= "メッセージの保存に失敗しました・・・・。"
    render 'index'
  end
end
  private
  def message_params
    params.require(:message).permit(:name,:body)
  end
end
