class MealItem < ActiveRecord::Base
  belongs_to :meal, :class_name => "Meal", :foreign_key => "meal_id"
  validates_presence_of :description, :meal_id
end
