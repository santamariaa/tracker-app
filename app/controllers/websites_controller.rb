class WebsitesController < ApplicationController


    def new
    end

    def create
        url = Website.url_segment(params[:website_url])
        
        if url == "https://whispering-plateau-16609.herokuapp.com/relationships"
            return nil
        end

        @website = Website.create(website_url: url)

        flash[:success] = "New websites added!"
        
        redirect_to "/relationships"

    end
end
