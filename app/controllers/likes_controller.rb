# class LikesController < ApplicationController
#   def create
#     # binding.pry
#     @like = current_user.likes.new(post_id: params[:post_id])
#     # if @like.save
#     #   respond_to do |format|
#     #     format.js
#     #   end
#     # end
#   end

#   def destroy
#     @like = Like.find_by(post_id: params[:post_id], user_id: current_user.id)
#     @like.destroy
    
#   end
# end

class LikesController < ApplicationController
  before_action :set_post
  # before_action :like_params

  def create
    # binding.pry
    @like = Like.create(user_id: current_user.id, post_id: @post.id)
  end

  def destroy
    # binding.pry
    @like = Like.find_by(user_id: current_user.id, post_id: @post.id)
    @like.destroy
  end

  private
  def set_post
    @post = Post.find(params[:post_id])
  end

  # def like_params
  #   params.require(:like).permit(:post_id,:user_id)
  # end
end