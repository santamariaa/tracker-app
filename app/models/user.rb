class User < ActiveRecord::Base
  has_many :websites, through: :relationship
  belong_to :visit

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
