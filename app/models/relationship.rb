class Relationship < ActiveRecord::Base
    belongs_to :user
    belongs_to :website
    has_many :visits

  def total_time
    total = 0
    visits.each do |visit| 
      total += visit.visit_time 
    end
    total
  end

  def friendly_time
    Time.at(total_time).utc.strftime("%H:%M:%S")
  end

end
 