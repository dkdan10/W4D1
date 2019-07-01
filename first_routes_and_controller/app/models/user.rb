class User < ApplicationRecord

  validates :username, presence: true
  has_many :artwork_shares,
    primary_key: :id,
    foreign_key: :artist_id,
    class_name: :ArtworkShare

  # has_many :artworks
  #   through: :artwork_shares,
  #   source: :artwork


end