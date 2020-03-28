class Obj < ApplicationRecord
  has_many :calories, through: :calorie_objs
end
