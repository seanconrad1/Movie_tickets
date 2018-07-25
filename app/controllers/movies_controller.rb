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

  def show
    @movie = Movie.find(params[:id])
    @tickets = Ticket.all
    render :show
  end

  def edit
    @movie = Movie.find(params[:id])
    render :edit
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.update(movie_params)
    redirect_to movie_path(@movie)
  end

  def destroy
    #code
  end

private
  def movie_params
    params.require(:movie).permit(:name, :year)
  end


end
