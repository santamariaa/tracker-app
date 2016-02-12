class Website < ActiveRecord::Base
    has_many :users, through: :relationship
    belongs_to :visit
end
