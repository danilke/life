class MessagesController < ApplicationController
  def index
    @messages = Message.all.limit(20)
  end

  def create
    @model = Model.find(params[:model_id])
    @user = User.find(params[:user_id])
    @message = @model.messages.build(params[:message])
    if !@model.current_sign_in_ip.nil?
    @message.from = @user.email
    @message.save
    PrivatePub.publish_to("/messages/new", message: @message)
    else 
    PrivatePub.publish_to("/messages/new", message: "Model neni Online")  
    end
  end
end