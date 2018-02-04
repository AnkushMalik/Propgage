class UsersController < ApplicationController
  before_action :set_user, only: :show
  before_action :authenticate_user!

  def show
    @post = @user.posts.all
    render
  end

  def index
    @user = User.all
  end

  private

  def set_user
    @user = User.find(params[:id]) if params[:id].present?
  end
end
