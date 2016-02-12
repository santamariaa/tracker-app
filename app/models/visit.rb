class Visit < ActiveRecord::Base
   has_many :websites, through: :relationship, class: OTHER         
   has_one :user, through: :relationship                      

end
