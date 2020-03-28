class MainController < ApplicationController

  def index
    @chart = Chart.new
    @charts = Chart.all
    @calendars = Calendar.all
  end

  def create
  end

  def show
    if ()

    end
  end

  def update
  end
end
