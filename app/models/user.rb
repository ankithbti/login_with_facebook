# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string(255)
#  remember_token  :string(255)
#  provider        :string(255)
#  uid             :string(255)
#  image           :string(255)
#

class User < ActiveRecord::Base
 #  	attr_accessible :email, :name, :password, :password_confirmation
 #  	has_secure_password

 #  	before_save { |user| user.email = email.downcase }
 #  	before_save :create_remember_token

 #  	validates :name, presence: true, length: { maximum: 50 }

 #  	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	# validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }

 #  	validates :password, presence: true, length: { minimum: 6 }
	# validates :password_confirmation, presence: true


	# private
	# 	def create_remember_token
	# 		self.remember_token = SecureRandom.urlsafe_base64
	# 	end


  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
      user.image = auth["info"]["image"]
      user.email = auth["info"]["email"]
    end
  end
end
