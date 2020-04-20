class CaloriesController < ApplicationController

  def index
    @chart = Chart.new
    @charts = Chart.all
    # @from_Chart = Chart.pluck(:weight, :length, :date)
    @calorie = Calorie.new
    @calories = Calorie.all
    @foods = Obj.pluck(:obj, :calorie)
  end

end
