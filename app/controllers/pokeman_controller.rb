class PokemanController < ApplicationController
  def index
    @pokemon = Pokeman.includes(:type, :stat).order("entryNumber ASC")
  end

  def show
    @pokemon = Pokeman.find(params[:id])
  end

  def search
    wc_search = "%#{params[:keywords]}%"
    @pokemon = Pokeman.where("pokemonName LIKE ?", wc_search)
  end
end
