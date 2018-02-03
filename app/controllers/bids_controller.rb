class BidsController < ApplicationController
  before_action :set_bid
  before_action :authenticate_user!

  def create
    @bid = @post.bids.create(params[:bid].permit(:description,:detail,:interest,:post_id,:user_id))
    redirect_to post_path(@post)
  end
  def destroy
    @bid = @post.bids.find(params[:id])
    @bid.destroy
    redirect_to :back
  end

  private

  def set_bid
    @post=Post.find(params[:post_id])
  end

end
