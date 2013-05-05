class CommitmentsController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy]
  before_filter :correct_user, only: :destroy

  def index
    @commitments = current_user.commitments.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @checkins }
    end
  end
  
  def create
    @commitment = current_user.commitments.build(params[:commitment])
    if @commitment.save
      flash[:success] = "Commitment created!"
      redirect_to root_url
    else
      render 'home/index'
    end
  end

  def destroy
    @commitment.destroy
    redirect_to root_url
  end

  private

  def correct_user
    @commitment = current_user.commitments.find_by_id(params[:id])
    redirect_to root_url if @commitment.nil?
  end
end