class User < ActiveRecord::Base
  has_many :relationships 
  has_many :websites, through: :relationships
  belongs_to :vist 
  has_many :visits, through: :relationships, class_name: "Visit"

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
