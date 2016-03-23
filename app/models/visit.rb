class Visit < ActiveRecord::Base

  belongs_to :relationship
  has_one :user, through: :relationship
  has_one :website, through: :relationship

  def website
    self.relationship && self.relationship.website
  end

  def friendly_time
    Time.at(visit_time).utc.strftime("%H:%M:%S")
  end

  def visit_time
    if checked_out == nil
      return 0
    else
      x = checked_out - checked_in
      p x
    end 

  end

  def friendly_checked_in
    Time.at(checked_in).utc.strftime("%H:%M:%S")
  end

  def friendly_checked_out
    Time.at(checked_out).utc.strftime("%H:%M:%S")
  end

  def total_time
    Time.at(visit_time).utc.strftime("%H:%M:%S")
  end
end
