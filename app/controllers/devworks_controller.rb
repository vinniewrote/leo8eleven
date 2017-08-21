class DevworksController < ApplicationController
  http_basic_authenticate_with name: "vinniewrote", password: "crunch80", except: [:index, :show]

  def index
    @devworks = Devwork.all
  end
  def show
    @devwork = Devwork.find(params[:id])
  end

  def new
    @devwork = Devwork.new
  end

  def edit
    @devwork = Devwork.find(params[:id])
  end

  def create
    @devwork = Devwork.new(devwork_params)

    if @devwork.save
      redirect_to @devwork
    else
      render 'new'
    end
  end

  def update
    @devwork = Devwork.find(params[:id])
    if @devwork.update(devwork_params)
    redirect_to @devwork
    else
      render 'edit'
    end
  end

  def destroy
    @devwork = Devwork.find(params[:id])
    @devwork.destroy

    redirect_to devworks_path
  end

  private
    def devwork_params
      params.require(:devwork).permit(:client, :image)
    end
end
