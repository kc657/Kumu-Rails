class Post < ApplicationRecord

  acts_as_votable
  validates :name, :description, :url, :content, presence: true


end
