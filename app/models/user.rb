class User < ApplicationRecord
  has_secure_password
  acts_as_voter
  has_many :posts

  def self.confirm(params)
    @user = User.find_by({username: params[:username]})
    @user ? @user.authenticate(params[:password]) : false
  end

end
