class CaloriesController < ApplicationController
  before_action :set_calories, only: [:destroy]

  def index
    # @chart = Chart.new
    # @charts = Chart.all
    # @from_Chart = Chart.pluck(:weight, :length, :date)
    @calorie = Calorie.new
    @calories = Calorie.all
    @obj = Obj.new
    @foods_list = Obj.pluck(:obj, :calorie)
    @foods = Obj.all
  end

  def destroy
    @obj.destroy
    redirect_to controller: "calories", action: "index"
  end

  private

  def set_calories
    @obj = Obj.find(params[:id])
  end

end
