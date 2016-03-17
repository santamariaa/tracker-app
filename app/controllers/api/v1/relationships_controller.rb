class Api::V1::RelationshipsController < ApplicationController

  def index
    @relationships = current_user.relationships
  end



end