class PokersController < ApplicationController
  def index
  end

  def show
    @poker = Poker.find(params[:id])
    @vote = Vote.new
  end

  def new
    @poker = Poker.new
  end

  def create
    @poker = Poker.new(poker_params)

    if @poker.save
      # probably a better way to do this. The idea is that we want to give the poker 'owner'
      # special privileges (remove user, show point estimates, etc) so we send them to the
      # show page with a query arg that indicates that they own it
      redirect_to controller: 'pokers', action: 'show', id: @poker.id, owner: 1
    else
      render :new
    end
  end

private
  def poker_params
    params.require(:poker).permit(:title)
  end
end