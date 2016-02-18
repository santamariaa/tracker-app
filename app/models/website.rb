class Website < ActiveRecord::Base
    has_many :relationships
    has_many :users, through: :relationships
    has_many :visits, through: :relationships, class_name: "Visit"

    validates :website_url, presence: true, uniqueness: true, length: { minimum: 2 }  

    def relationship 
        self.relationships.first
    end



end
