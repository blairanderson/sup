class MealItemsController < ApplicationController
  def create
    @meal = Meal.find(params[:meal_item][:meal_id])
    unless @meal
      redirect_to new_meal_path
      return
    end
    @meal_item = MealItem.new(meal_item_params)

    if @meal_item.save
      redirect_to @meal
    else
      redirect_to @meal
    end
  end

  def update
    @meal_item = MealItem.find(params[:id])
    if @meal_item.update(meal_item_params)
      redirect_to @meal_item.meal
    else
      redirect_to @meal_item.meal
    end
  end

  private
  def set_meal_item
    @meal_item = MealItem.find(params[:id])
  end

  def meal_item_params
    params.require(:meal_item).permit(:description, :meal_id)
  end
end
