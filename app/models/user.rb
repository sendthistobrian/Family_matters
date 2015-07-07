class User < ActiveRecord::Base
         before_create :generate_default_profile
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    def generate_default_profile
    	self.profile = Profile.new
    end
end
