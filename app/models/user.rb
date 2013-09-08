class User < ActiveRecord::Base
	attr_accessible :bio, :email, :full_name, :location, :password

	validates_presence_of :email, :full_name, :location, :password
	validates_confirmation_of :password
	validates_length_of :bio,minimun => 30, allow_blank => false
end
