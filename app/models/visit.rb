class Visit < ActiveRecord::Base

  belongs_to :relationship
  has_one :user, through: :relationship
  has_one :website, through: :relationship

  def website
    self.relationship && self.relationship.website
  end

end
