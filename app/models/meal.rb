class Meal < ActiveRecord::Base
  as_enum :time, [:breakfast, :brunch, :lunch, :dinner]
  validates :time, presence: true

  has_one :meal_item, class_name: "MealItem"
  has_many :feelings, class_name: "Feeling"
  has_many :symptoms, class_name: "Symptom"
end
