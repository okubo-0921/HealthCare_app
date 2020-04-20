class ChartsController < ApplicationController
  before_action :set_chart, only: [:show, :edit, :update, :destroy]

  # GET /charts
  # GET /charts.json
  def index
    @chart = Chart.new
    @charts = Chart.all.order("created_at DESC").page(params[:page]).per(5)
  end

  # GET /charts/1
  # GET /charts/1.json
  def show
  end

  # GET /charts/new
  def new
    @chart = Chart.new
  end

  # GET /charts/1/edit
  def edit
  end

  # POST /charts
  # POST /charts.json
  def create
    @chart = Chart.new(chart_params)
    @chart.BMI = @chart.set_information[:BMI]
    @chart.Proper = @chart.set_information[:Proper]
    @chart.metabolism = @chart.basal_metabolism(current_user.age)

    respond_to do |format|
      if @chart.save
        format.html { redirect_to @chart, notice: '編集しました' }
        format.json { render :show, status: :created, location: @chart }
      else
        format.html { render :new }
        format.json { render json: @chart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /charts/1
  # PATCH/PUT /charts/1.json
  def update
    @chart.BMI = @chart.set_information[:BMI]
    @chart.Proper = @chart.set_information[:Proper]
    @chart.metabolism = @chart.basal_metabolism(current_user.age)
    respond_to do |format|
      if @chart.update(chart_params)
        format.html { redirect_to @chart, notice: '更新しました' }
        format.json { render :show, status: :ok, location: @chart }
      else
        format.html { render :edit }
        format.json { render json: @chart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /charts/1
  # DELETE /charts/1.json
  def destroy
    @chart.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: '削除しました' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chart
      @chart = Chart.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def chart_params
      params.require(:chart).permit(:name, :weight, :length, :BMI, :Proper, :date, :metabolism)
    end
end
