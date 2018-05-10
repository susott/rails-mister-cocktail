class DosesController < ApplicationController
  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(user_params)
    @dose.cocktails = Cocktails.find(params[:cocktail_id])
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end


  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
  end


  private

  def user_params
    params.require(:dose).permit(:description)
  end

end
