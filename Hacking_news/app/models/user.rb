class User < ApplicationRecord
  has_many :posts
  has_many :comments, as: :commentable
end
