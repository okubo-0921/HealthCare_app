class CaloriesController < ApplicationController

  def index
    @chart = Chart.new
    @charts = Chart.all
    @calorie = Calorie.new
    @calories = Calorie.all
    # @obj = Obj.new
    # @objs = Obj.all
    @foods = Obj.pluck(:obj, :calorie)
  end

end
