class TimelinesController < ApplicationController
    before_action :authenticate_user!

    def show
      # user1, user2, user3 => [1, 2, 3]
      user_ids = current_user.followings.pluck(:id)
      @articles = Article.where(user_id: user_ids)
    end

end
