class Picture < ApplicationRecord
  belongs_to :comments
  belongs_to :user
end
