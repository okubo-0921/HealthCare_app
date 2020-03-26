class Chart < ApplicationRecord
  belongs_to :user, optional: true

  def bmi
    weight.to_f / (length.to_f / 100) ** 2 +0.5
  end

  def proper
    (length.to_f / 100) **2 * 22 +0.5
  end

  def set_information
    {BMI: bmi, Proper: proper}
  end
end
