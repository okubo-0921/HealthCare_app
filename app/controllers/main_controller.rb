class MainController < ApplicationController

  def index
    @chart = Chart.new
    @charts = Chart.all
  end

end
