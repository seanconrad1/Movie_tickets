class TicketsController < ApplicationController

  def new
    @ticket = Ticket.new
    render :new
  end

  def create
    @ticket = Ticket.create(ticket_params)
    @movie = Movie.find(ticket_params[:movie_id])
    redirect_to movie_path(@movie)
  end

  private
  def ticket_params
    params.require(:ticket).permit(:movie_id)
  end

end
