class DosesController < ApplicationController
  def new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.save!
    redirect_to dose_path(@dose)
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy

    # no need for app/views/restaurants/destroy.html.erb
    redirect_to dose_path # no view for dose destroy?
  end
    # dose within cocktail? because cocktail/1/dose
end
