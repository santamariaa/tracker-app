class VisitsController < ApplicationController

    def new 
    end

    def create
      # if(!current_user)
      #   current_user = User.find_by(email: params[:email])
      # end
      # p current_user
      @current_visit = Visit.create(relationship_id: params[:relationship_id])

      if params[:checked_in]
        @current_visit.update(checked_in: Time.now)
      end

      if params[:checked_out]
        @current_visit.update(checked_out: Time.now)
      end

      flash[:success] = "Tracking"
      redirect_to "/visits/#{@current_visit.id}/edit"
    end

    def show
      @current_visit = Visit.find_by(id: params[:id])
    end

    def edit
      @current_visit = Visit.find_by(id: params[:id])
    end

    def update
      @current_visit = Visit.find_by(id: params[:id])
     
      @current_visit.update(relationship_id: current_user.id)

      if params[:checked_in]
        @current_visit.update(checked_in: Time.now)
      end

      if params[:checked_out]
        @current_visit.update(checked_out: Time.now)
      end

      redirect_to "/visits/#{@current_visit.id}"
    end

    def destroy
    end
    
end
