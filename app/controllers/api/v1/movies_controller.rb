module Api
  module V1
    class MoviesController < ApplicationController
      def index
        movies = Movie.all.order(rating: :desc)
        render json: movies, each_serializer: MovieSerializer
      end

      def show
        movie = Movie.find(params[:id])
        render json: movie, serializer: MovieSerializer
      end

      def search
        query = params[:q].downcase
        movies = Movie.where("LOWER(title) LIKE ?", "%#{query}%")
                      .or(Movie.where("LOWER(director) LIKE ?", "%#{query}%"))
                      .order(rating: :desc)
        
        render json: movies, each_serializer: MovieSerializer
      end
    end
  end
end