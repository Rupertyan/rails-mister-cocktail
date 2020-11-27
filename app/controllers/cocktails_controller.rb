class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(banana_params) # why do this twice from new to create?
    @cocktail.save!
    redirect_to cocktail_path(@cocktail)
  end

   private

  def banana_params
    params.require(:cocktail).permit(:name)
  end
end
