class Api::V1::VisitsController < ApplicationController

  def index
    @relationships = current_user.relationships

    relationships_json = []
    @relationships.each do |relationship|
      relationships_json << { name: website_url, y: total_time }
    end

    render json: relationships_json
  end

  def create

    user = User.find_by(email: params[:email])

    if user
      adjusted_time = DateTime.strptime(params[:time],'%s')

      if params[:url]
        url = Website.url_segment(params[:url])
        website = Website.find_or_create_by(website_url: url)
        relationship = Relationship.find_or_create_by(website_id: website.id, user_id: user.id)
      end

      if visit = relationship.visits.find_by(checked_out: nil)
        visit.update(checked_out: adjusted_time)
      end

      if params[:url]
        Visit.create(relationship_id: relationship.id, checked_in: adjusted_time)
      end
    end
    
    render json: {message: success}
  end

  def reset
    Visit.delete_all
    redirect_to action: :index
  end

  #   if relationship
  #     # if no visits exist
  #     # there are visits:
  #       # are there any visits wihout a checkout time?
  #     if visit = relationship.visits.find_by(checked_out: nil)
  #       visit.update(checked_out: Time.now)
  #       render html: "Stopped Tracking"
  #     else
  #       Visit.create(relationship_id: relationship.id,
  #                    checked_in: Time.now)

  #       render html: "Tracking"
  #     end
  #   else
  #     render html: "Email not found"
  #   end

  # end



end
