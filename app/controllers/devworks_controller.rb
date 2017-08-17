class DevworksController < ApplicationController
  def show
    @devwork = Devwork.find(params[:id])
  end

  def new
  end

  def create
    @devwork = Devwork.new(params.require(:devwork).permit(:client, :image))

    @devwork.save
    redirect_to @devwork
  end

end
