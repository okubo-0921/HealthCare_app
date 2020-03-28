class Chart < ApplicationRecord
  belongs_to :user, optional: true

  def bmi
    # 体重kg ÷ 身長m^2
    weight.to_f / (length.to_f / 100) ** 2
  end

  def proper
    # 身長m^2 × 22
    (length.to_f / 100) **2 * 22
  end

  def basal_metabolism(age)
    # ハリス・ベネディクト方程式(今回は男性を想定)
    # 男性： 13.397×体重kg＋4.799×身長cm−5.677×年齢+88.362
    # 女性： 9.247×体重kg＋3.098×身長cm−4.33×年齢+447.593
    (13.397*weight.to_f)+(4.799*length.to_f)-(5.677*age)+88.362
  end

  def set_information
    {BMI: bmi, Proper: proper}
  end

end
