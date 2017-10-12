class MessageController < ApplicationController

  before_action :authenticate_user!

  def index
    @message = Message.all
  end

  def new
    @message = Message.new
  end

  def create

    # this needs to create a new message....
    # message = Message.create(message_params)
    # @message = Message.new(message_params)
    # redirect_to message_path
    ticket = Ticket.find params["ticket"].to_i
    p message_params
    @message = ticket.messages.new message_params
    p @message

    if(@message.save)
        #Saved successfully; go to the index (or wherever)...
      redirect_to ticket_path ticket
    else
      puts @message.errors.full_messages
      render :new
        #Validation failed; show the "new" form again...
        # render :action => :new
    end
  end

    private

    def message_params
      params.require(:message).permit(:content, :ticket)
    end
  end
