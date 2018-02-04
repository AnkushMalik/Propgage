class HomeController < ApplicationController

  def feeds
  @post=Post.all
  end

  def land
    #code
  end
  def profile
  end
end
