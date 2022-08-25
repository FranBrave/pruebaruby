class HelloworldController < ApplicationController
    def index
        @frantrial = FranTrial.all
    end

    def new
        @frantrial = FranTrial.new
    end

    def create
        @frantrial = FranTrial.new(frantrial_params)

        if @frantrial.save
            redirect_to helloworld_path
        else
            render
        end
    end

    private 
    def frantrial_params
        params.require(:frantrial).permit(:title, :description) 
    end
end