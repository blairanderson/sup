class MealsController < ApplicationController
  before_action :set_meal, only: [:show]

  def index
    @meals = Meal.order(created_at: :desc)
    if @meals.count == 0
      redirect_to new_meal_path
    end
  end

  def show
    @meal_item = @meal.meal_item || @meal.build_meal_item
    @feeling = @meal.feelings.build
  end

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new(meal_params)

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
    params.require(:meal).permit(:time)
  end
end
