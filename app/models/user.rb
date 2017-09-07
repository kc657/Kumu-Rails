class User < ApplicationRecord
  has_secure_password

  #validation
  validates :username, presence: true, uniqueness: true
  validates :password_digest, presence: true, length: {minimum: 4}


  #Voting system
  acts_as_voter

  #Connection to Posts on a 1:M association
  has_many :posts

  #Connection to Topics on a M:M association
  has_many :user_topics, dependent: :destroy
  has_many :topics, through: :user_topics

  #loading image for user profile
  has_attached_file :image, styles: { large: "600x600>", medium: "400x400>", thumb: "100x100#"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  def self.confirm(params)
    @user = User.find_by({username: params[:username]})
    @user ? @user.authenticate(params[:password]) : false
  end

end
