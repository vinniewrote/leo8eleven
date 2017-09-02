class DevworksController < ApplicationController
  #before_action :one_user_registered?, only: [:new, :edit, :create, :update, :destroy]

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

  protected
    def one_user_registered?
      if ((User.count == 1) & (user_signed_in?))
        redirect_to @devwork.new(devwork_params)
      elsif User.count == 1
        redirect_to devworks_path
      end
    end

  private
    def devwork_params
      params.require(:devwork).permit(:client, :active_site, :url, :hero, :archive_link)
    end
end
