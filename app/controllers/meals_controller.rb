class MealsController < ApplicationController
  before_action :set_meal, only: [:show]

  def show
  end

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new(meal_params)

    binding.pry
    if @meal.save
      redirect_to @meal
    else
      render :new
    end
  end

  private
  def set_meal
    @meal = Meal.find(params[:id])
  end

  def meal_params
    params.require(:meal).permit(:type)
  end
end
