class User < ActiveRecord::Base
  authenticates_with_sorcery!
  # attr_accessible :title, :body

attr_accessible :username, :email, :password, :password_confirmation

	before_save {|user| user.username = username.downcase }
	before_save {|user| user.email = email.downcase }

	validates :password, confirmation: true
	validates :password, length: {minimum: 7}
	validates :password, presence: true
	validates :password_confirmation, presence: true

	validates :username, presence: true, uniqueness: true

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, format: {with: VALID_EMAIL_REGEX }, uniqueness: {case_sensitive: false}

end
