class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :rating, :director, :plot, :poster_url

  has_many :casts, through: :movie_casts, serializer: CastSerializer do
    object.casts.limit(3) # Only show top 3 cast members
  end
end