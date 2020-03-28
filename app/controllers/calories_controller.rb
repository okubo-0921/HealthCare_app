class CaloriesController < ApplicationController

  def index
    @calories = Calorie.all
  end
end
