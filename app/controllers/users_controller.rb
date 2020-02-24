class UsersController < ApplicationController
  def show
    # @posts = current_user.posts
    # @user = User.find(params[:id])
    @user = User.find(params[:id])
    @posts = @user.posts
  end
end
