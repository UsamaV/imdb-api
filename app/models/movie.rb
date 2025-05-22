class Movie < ApplicationRecord
  has_many :movie_casts
  has_many :casts, through: :movie_casts
end

class Cast < ApplicationRecord
  has_many :movie_casts
  has_many :movies, through: :movie_casts
end

class MovieCast < ApplicationRecord
  belongs_to :movie
  belongs_to :cast
end