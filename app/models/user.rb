class User < ApplicationRecord
  has_secure_password
  has_many :users_pictures
  has_many :pictures, through: :users_pictures
end
