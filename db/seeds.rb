# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

MovieCast.delete_all
Movie.delete_all
Cast.delete_all

def create_cast(name, movie, character)
  cast = Cast.find_or_create_by!(name: name)
  MovieCast.create!(movie: movie, cast: cast, character: character)
  cast
end

shawshank = Movie.create!(
  title: "The Shawshank Redemption",
  year: 1994,
  rating: 9.3,
  director: "Frank Darabont",
  plot: "Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.",
  poster_url: "https://m.media-amazon.com/images/M/MV5BNDE3ODcxYzMtY2YzZC00NmNlLWJiNDMtZDViZWM2MzIxZDYwXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg"
)

create_cast("Tim Robbins", shawshank, "Andy Dufresne")
create_cast("Morgan Freeman", shawshank, "Ellis Boyd 'Red' Redding")
create_cast("Bob Gunton", shawshank, "Warden Norton")

godfather = Movie.create!(
  title: "The Godfather",
  year: 1972,
  rating: 9.2,
  director: "Francis Ford Coppola",
  plot: "The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.",
  poster_url: "https://m.media-amazon.com/images/M/MV5BM2MyNjYxNmUtYTAwNi00MTYxLWJmNWYtYzZlODY3ZTk3OTFlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg"
)

create_cast("Marlon Brando", godfather, "Don Vito Corleone")
create_cast("Al Pacino", godfather, "Michael Corleone")
create_cast("James Caan", godfather, "Sonny Corleone")
