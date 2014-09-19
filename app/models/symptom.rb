class Symptom < ActiveRecord::Base
  belongs_to :meal, class_name: "Meal"
end
