class VisitsController < ApplicationController
    def index
        @visits = Website.all 
    end
end
