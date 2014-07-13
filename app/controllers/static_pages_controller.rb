class StaticPagesController < ApplicationController
  def home
  	if signed_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
      @unreadpost_ids = current_user.unread_posts.map(&:id)
    end
  end

  def help
  end

  def about
  end

  def contact
  end
end
