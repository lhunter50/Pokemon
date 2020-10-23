class PokemanController < ApplicationController
  def index
    @pokemon = Pokeman.includes(:type, :stat).order("entryNumber ASC")
  end

  def show
    @pokemon = Pokeman.find(params[:id])
  end
end
