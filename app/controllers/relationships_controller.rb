class RelationshipsController < ApplicationController
    before_filter :authenticate_user!

    def index
        @websites = current_user.websites 
    end

    def new
        @website = Website.new
    end

    def create
        @website = Website.find_or_create_by({website_url: params[:website_url]})
        if @website.valid? 

        relationship = Relationship.create(user_id: current_user.id,
                                            website_id: website.id,
                                            productive: false)
            
            flash[:success] = "New websites added!"
        
            redirect_to "/relationships"
        else
            render :new 
        end

    end

    def show
        @website = Website.find_by(id: params[:id])
    end

    def edit
        @relationship = Relationship.find_by(id: params[:id])
    end

    def update 
        relationship = Relationship.find(params[:id])

        relationship.update(productive: params[:productive])

        flash[:success] = "Relationship Updated"
        redirect_to "/relationships"
    end

# find or create rails

end
