class Topic < ApplicationRecord
belongs_to :user

#Post association Foreing keys
has_many :posts

#User Association Foreing Keys
  has_many :user_topics, dependent: :destroy
  has_many :users, through: :user_topics



end
