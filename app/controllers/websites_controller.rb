class WebsitesController < ApplicationController


    def new
    end

    def create
        
        p '+++++++++++++++++++'
        p params[:website_url]
        p '+++++++++++++++++++'
        
        if params[:website_url] != 'whispering-plateau-16609.herokuapp.com'
            url = Website.url_segment(params[:website_url])
            @website = Website.create(website_url: url)
        end
        flash[:success] = "New websites added!"
        
        redirect_to "/relationships"

    end
end
