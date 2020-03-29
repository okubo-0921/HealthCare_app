class Calorie < ApplicationRecord
  belongs_to :user, optional: true
  has_many :objs, through: :calorie_objs

end
