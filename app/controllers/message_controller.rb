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
    redirect_to :action => 'new'
    # message = Message.create(message_params)
    # @message = Message.new(message_params)
    # redirect_to message_path
    @message = Message.new(params[:content])
    if(@message.save)
        #Saved successfully; go to the index (or wherever)...
        redirect_to '/message'
         redirect_to :action => 'new'
    else
      redirect_to '/message'
        #Validation failed; show the "new" form again...
        # render :action => :new
    end
  end

end
