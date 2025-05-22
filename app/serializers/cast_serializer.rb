class CastSerializer < ActiveModel::Serializer
  attributes :id, :name, :character

  def character
    object.movie_casts.find_by(movie_id: scope[:movie_id]).character if scope && scope[:movie_id]
  end
end