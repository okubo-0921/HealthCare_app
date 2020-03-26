class MainController < ApplicationController

  def index
    @chart = Chart.new
    @charts = Chart.all
    @calendars = Calendar.all
  end

  # def update
  #   render template: "/charts/index"
  # end
end
