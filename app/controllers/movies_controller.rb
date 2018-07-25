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
    #code
  end


end
