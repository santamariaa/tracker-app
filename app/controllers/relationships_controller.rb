class RelationshipsController < ApplicationController

    def index
        @websites = Website.all 
    end
end
