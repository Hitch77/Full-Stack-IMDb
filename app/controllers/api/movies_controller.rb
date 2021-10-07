class Api::MoviesController < ApplicationController
    def index
        @movies = Movie.all
    end

    def show
        @movie = Movie.find(params[:id])
    end

    def search
        query=params[:query]
        @movies = Movie.where('title ILIKE ?', "%#{query}%")
        if @movies.length > 0
            render :index
        else
            render json: ["Sorry, we did not find any results for #{query}, try another search"], status: 404
        end
    end

    private

    def movie_params
        params.require(:movie).permit(:title, :year, :description, :duration, :film_rating)
    end
end