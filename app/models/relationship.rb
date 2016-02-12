class Relationship < ActiveRecord::Base
    belongs_to :user
    belongs_to :website
    belongs_to :visit
end
 