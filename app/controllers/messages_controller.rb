class MessagesController < ApplicationController
    def index
        @messages = Message.all
    
    def new
        @message = Message.new
    end

    def create
        Message.create(message_params)
    end

    private
    def user_params
        params.require(:message).permit(:name, :age)
    end
end
