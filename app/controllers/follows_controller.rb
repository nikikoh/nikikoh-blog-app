class FollowsController < ApplicationController
  def create
    before_action :authenticate_user!

    current_user.follow!(params[:account_id])
    redirect_to account_path(params[:account_id])
  end
end
