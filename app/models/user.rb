class User < ActiveRecord::Base
  include UserAdmin

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :email, :presence => true
  validates :password, :confirmation => true

  def name
    email.split('@').try(:first) || email
  end
end
