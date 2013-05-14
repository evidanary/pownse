class CheckinsController < ApplicationController
  # GET /checkins
  # GET /checkins.json
  def index
    @checkins = Checkin.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @checkins }
    end
  end


  # GET /checkins/new
  # GET /checkins/new.json
  def new
    @checkin = Checkin.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @checkin }
    end
  end

  # POST /checkins
  # POST /checkins.json
  def create
    @checkin = Checkin.new(params[:checkin])
	respond_to do |format|
		if @checkin.save
		  #format.html { redirect_to(root_path, :notice => 'Checkin was successfully created.') }
		  flash[:success] = "Checkin created!"
		  redirect_to root_path
		  #redirect_to user_path.concat("/").concat(checkin.commitment.user.id)
		else
  		  flash[:success] = "Checkin not created!"
  		  redirect_to root_path
		  #format.html { redirect_to root_path, :notice => "Couldn't create Checkin #{@checkin.to_s}" }
		end
	 end
  end
  
  # DELETE /checkins/1
  # DELETE /checkins/1.json
  def destroy
    @checkin = Checkin.find(params[:id])
    @checkin.destroy

    respond_to do |format|
      format.html { redirect_to checkins_url }
      format.json { head :no_content }
    end
  end
end
