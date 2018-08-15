class Picture < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :user_pictures
end
