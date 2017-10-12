class MessageController < ApplicationController

  before_action :authenticate_user!

  def index
    @message = Message.all
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new params[:content]

    if @message.save
      redirect_to @message
    else
      render :new
    end
  end
end
