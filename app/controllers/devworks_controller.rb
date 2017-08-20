class DevworksController < ApplicationController
  def index
    @devworks = Devwork.all
  end
  def show
    @devwork = Devwork.find(params[:id])
  end

  def new
    @devwork = Devwork.new
  end

  def create
    @devwork = Devwork.new(devwork_params)

    if @devwork.save
      redirect_to @devwork
    else
      render 'new'

    # @devwork.save
    # redirect_to @devwork
  end

  private
    def devwork_params
      params.require(:devwork).permit(:client, :image)
    end
end
