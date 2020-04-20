class MainController < ApplicationController

  def index
    @chart = Chart.new
    @charts = Chart.all
    @calendars = Calendar.all
  end

end
