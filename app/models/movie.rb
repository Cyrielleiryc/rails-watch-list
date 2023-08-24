class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :lists, through: :bookmarks
  validates :title, :overview, uniqueness: true
  validates :title, :overview, length: { minimum: 1 }
end
