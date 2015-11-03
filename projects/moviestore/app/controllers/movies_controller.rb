class MoviesController < ApplicationController
  
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movies.find(params[:id])
    @cart_action = @movie.cart_action current_user.try :id
  end

end