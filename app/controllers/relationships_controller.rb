class RelationshipsController < ApplicationController
    before_filter :authenticate_user!

    def index
        @relationships = current_user.relationships 
        # @total_time = current_user.relationships.first.total_time
    end

    def new
        @website = Website.new
    end

    def create
        url = Website.url_segment(params[:website_url])
      
      

        @website = Website.find_or_create_by(website_url: url)


        if @website.valid? 

        relationship = Relationship.find_or_create_by(user_id: current_user.id,
                                            website_id: @website.id,
                                            productive: false)
            
            flash[:success] = "New websites added!"
        
            redirect_to "/relationships"
        else
            render :new 
        end

    end

    def show
        @relationship = Relationship.find_by(id: params[:id])
        @website = @relationship.website
        @visits = @relationship.visits
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

    def reset
      Visit.delete_all
      Website.delete_all
      Relationship.delete_all
      redirect_to action: :index
    end

# find or create rails

end
