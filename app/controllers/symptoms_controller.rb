class SymptomsController < ApplicationController

  def create
    @meal = Meal.find(params[:symptom][:meal_id])
    unless @meal
      redirect_to new_meal_path
      return
    end
    @symptom = Symptom.new(symptom_params)

    if @symptom.save
      redirect_to @meal
    else
      redirect_to @meal
    end
  end

  private
  def set_symptom
    @symptom = Symptom.find(params[:id])
  end

  def symptom_params
    params.require(:symptom).permit(:name, :severity, :meal_id)
  end
end
