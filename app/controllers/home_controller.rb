class HomeController < ApplicationController
  def index
    @title = "Pownse"
    @user = current_user
    @commitment = current_user.commitments.build if signed_in?
  end
  def contact
  
  end
end
