class PokersController < ApplicationController
  def index
  end

  def show
    @poker = Poker.find(params[:id])
  end

  def new
    @poker = Poker.new
  end

  def create
    @poker = Poker.new(poker_params)

    if @poker.save 
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