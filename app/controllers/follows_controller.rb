class FollowsController < ApplicationController
<<<<<<< Updated upstream
  def create
    before_action: :authenticate_user!
=======
  before_action :authenticate_user!

  def create
>>>>>>> Stashed changes
    current_user.follow!(params[:account_id])
    redirect_to account_path(params[:account_id])
  end
end
