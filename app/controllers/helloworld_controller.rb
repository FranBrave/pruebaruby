class HelloworldController < ApplicationController
    def index
        @frantrial = FranTrial.all
    end
end