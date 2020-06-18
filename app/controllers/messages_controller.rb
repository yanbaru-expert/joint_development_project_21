class MessagesController < ApplicationController
    def index
        @messages = Message.all
    
    def new
        @message = Message.new
    end

    def create
        Message.create(message_params)
    end

    def show 
        @message = Message.find(params[:id])
    end

    def edit
        @message = Message.find(params[:id])
    end

    private
    def user_params
        params.require(:message).permit(:title, :content)
    end
end
