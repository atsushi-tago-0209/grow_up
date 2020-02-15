class UsersController < ApplicationController
  @posts = current_user.posts
  @user = User.find(params[:id])
end
