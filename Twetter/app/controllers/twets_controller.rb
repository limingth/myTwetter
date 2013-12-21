class TwetsController < ApplicationController
  layout 'twets'

  def show
    @twets = current_user.all_twets
    redirect_to twets_path
  end

  def index
    @users = User.all
    #@twets = Twet.all
    @twets = current_user.all_twets
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
