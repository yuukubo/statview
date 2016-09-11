class MembersController < ApplicationController

  def create
    @status = Status.find(params[:status_id])
    @member = @status.members.create(member_params)
    redirect_to status_path(@status.id)
  end

  def destroy
    @member = Member.find(params[:id])
    @member.destroy
    redirect_to status_path(params[:status_id])
  end

  private

    def member_params
      params[:member].permit(:name)
    end

end
