class HomeController < ApplicationController

  def feeds
    @post = Post.all.order("created_at DESC")
  end

  def land
    #code
  end
  def profile
  end
end
