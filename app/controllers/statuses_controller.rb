class StatusesController < ApplicationController

  before_action :set_status, only: [:show, :edit, :update, :destroy]

  def index
    @statuses = Status.all
  end

  def show
#    @status = Status.find(params[:id]) # del by before_action
  end

  def new
    @status = Status.new
  end

  def create
    @status = Status.new(status_params)
    if @status.save
      redirect_to statuses_path
    else
      render 'new'
    end
  end

  def edit
#    @status = Status.find(params[:id]) # del by before_action
  end

  def update
#    @status = Status.find(params[:id]) # del by before_action
    if @status.update(status_params)
      redirect_to statuses_path
    else
      render 'edit'
    end
  end

  def destroy
#    @status = Status.find(params[:id]) # del by before_action
    @status.destroy
    redirect_to statuses_path
  end

  private

    def status_params
      params[:status].permit(:status, :color)
#      params[:status].permit(:color)
    end

    def set_status
      @status = Status.find(params[:id])
    end

end
