class WebsitesController < ApplicationController


    def new
    end

    def create
        url = Website.url_segment(params[:website_url])

        @website = Website.create(website_url: url)

        flash[:success] = "New websites added!"
        
        redirect_to "/relationships"

    end
end
