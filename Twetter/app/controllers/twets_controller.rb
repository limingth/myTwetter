class TwetsController < ApplicationController
  layout 'twets'

  def index
    @users = User.all
    @twets = Twet.all
  end

  def create
    @twet = current_user.twets.create(twet_params)
    if @twet.valid?
      flash[:success] = "Your twet was shared"
      redirect_to :action => :index and return
    else
      get_twets
      flash[:error] = "Your twet could not be saved"
#      render :action => :index and return
    end 
  end 

  def twet_params
    params.require(:twet).permit(:content)
  end 

end
