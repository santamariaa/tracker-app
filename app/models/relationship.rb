class Relationship < ActiveRecord::Base
    belongs_to :user
    belongs_to :website
    has_many :visits

    def productive

    end
end
 