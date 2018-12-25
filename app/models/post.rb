class Post < ApplicationRecord
  has_many :comments
  validates :title, presence: true, uniqueness: true
end
