class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :username,
    length: {in: 4..12},
    presence: true,
    uniqueness: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email,
    presence: true,
    length: { maximum: 255 },
    uniqueness: true,
    format: { with: VALID_EMAIL_REGEX }

  validates :password,
    length: { minimum: 3 },
    presence: true
end
