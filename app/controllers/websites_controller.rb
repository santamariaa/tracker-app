class WebsitesController < ApplicationController

    def new
    end

    def create
        @website = Website.create({website_url: params[:website_url]})

        flash[:success] = "New websites added!"
        
        redirect_to "/relationships"

    end
end
