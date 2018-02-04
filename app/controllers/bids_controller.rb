class BidsController < ApplicationController
  before_action :set_bid
  before_action :authenticate_user!

  def create
    @bid = @post.bids.create(params[:bid].permit(:description,:detail,:interest,:post_id))
    @bid.user_id = current_user.id
    puts '**********************************'
    puts params
    puts '**********************************'
    puts @bid
    puts '**********************************'
    if @bid.save
      redirect_to post_path(@post)
    else
      flash[:notice]= 'something went wrong'
      redirect_to post_path(@post)
    end
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
