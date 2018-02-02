class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :post_title,
    presence: true

  validates :post_link,
    presence: true
end
