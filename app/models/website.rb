class Website < ActiveRecord::Base
    has_many :relationships
    has_many :users, through: :relationships
    has_many :visits, through: :relationships, class_name: "Visit"

    validates :website_url, presence: true
    validates :website_url, uniqueness: true 
    validates :website_url, length: { minimum: 2 }  

    def relationship 
        self.relationships.first
    end

    def self.url_segment(url)
        url.split("/")[2]   
    end


end
