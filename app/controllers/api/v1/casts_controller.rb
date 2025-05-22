module Api
  module V1
    class CastsController < ApplicationController
      def show
        cast = Cast.includes(:movies).find(params[:id])
        render json: cast, serializer: CastSerializer
      end
    end
  end
end