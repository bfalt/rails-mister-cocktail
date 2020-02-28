class CocktailsController < ApplicationController
  before_action :set_params, only: :show
  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail.id)
    else
      render 'new'
    end
  end

  def show
    @doses = @cocktail.doses
    @ingredients = @cocktail.ingredients
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end

  def set_params
    @cocktail = Cocktail.find(params[:id])
  end
end
