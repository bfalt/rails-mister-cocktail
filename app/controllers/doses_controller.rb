class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @dose = Dose.new
    if @dose.save
      @dose = Dose.find(params(@cocktail.id))
      redirect_to cocktail_path
    else
      render 'new'
    end
  end

  def destroy
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail.destroy
  end
end

