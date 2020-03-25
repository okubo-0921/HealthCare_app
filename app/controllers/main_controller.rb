class MainController < ApplicationController

  def index
    @charts = Chart.all
  end
  
end
