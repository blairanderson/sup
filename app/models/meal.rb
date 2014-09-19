class Meal < ActiveRecord::Base
  as_enum :type, [:breakfast, :brunch, :lunch, :dinner]
  validates :type, presence: true
end
