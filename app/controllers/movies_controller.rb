class MoviesController < ApplicationController


  def index
    @movies = Movie.all
    render :index
  end

  def new
    @movie = Movie.new
    render :new
  end

  def create
    @movie = Movie.create(movie_params)
    redirect_to movies_path
  end



private
  def movie_params
    params.require(:movie).permit(:name, :year)
  end


end
