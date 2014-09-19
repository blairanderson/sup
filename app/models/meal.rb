class Meal < ActiveRecord::Base
  as_enum :type, [:breakfast, :brunch, :lunch, :dinner]

end
