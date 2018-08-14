class Picture < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :users_pictures
end
