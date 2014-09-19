# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


meal = Meal.create(time_cd: 3)
meal.create_meal_item(description: "frito pie - ground beef / beans / lettuce / sour cream / tomatoes")