class VisitsController < ApplicationController
    def new
      
    end

    def create
      Visit.create({
          relationship_id: current_user.id,
          checked_in: params[Time.now],
          checked_out: params[Time.now]})


      flash[:success] = "Tracking"
      redirect_to "/visits"
    end

    
end
