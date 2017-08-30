class BillboardChartsController < ApplicationController
  before_action :set_billboard_chart, only: [:show, :update, :edit, :destroy]

  def index
    @billboard_chart = BillboardChart.all
  end

  def show
  end

  def new
    @billboard_chart = BillboardChart.new
    render partial: 'form'
  end

  def edit
    render partial: 'form'
  end

  def create
    @billboard_chart = BillboardChart.new(billboard_chart_params)
    if @billboard_chart.save
      redirect_to billboard_chart_path(@billboard_chart)
    else
      render partial: "form"
    end
  end

  def update
    if @billboard_chart.update(billboard_chart_params)
      redirect to billboard_chart_path(@billboard_chart)
    else
      render partial: 'form'
    end
  end

  def destroy
    @billboard_chart.destroy
    redirect_to billboard_charts_path
  end

  private
    def set_billboard_chart
      @billboard_chart = BillboardChart.find(params[:id])
    end

    def billboard_chart_params
      params.require(:billboard_chart).permit(:name)
    end

end
