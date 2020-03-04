class PostsController < ApplicationController
  before_action :set_post ,only: [:show, :edit, :update]

  def index
    @posts = Post.all
    @keyword = Post.ransack(params[:q])
    @posts = @keyword.result(distinct: true)
    @posts = Post.includes(:user).order("created_at DESC").page(params[:page]).per(8)
  end

  def new
    @post = Post.new
    @targets = Target.all
    # @targets= @post.targets.new
    # @post.build_target
    # @post.users << current_user
  end

  def create
    Post.create(post_params)
  end

  def show
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to root_path
    else
      redirect_to "edit"
    end
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
  end

  def set_post
    @post = Post.find(params[:id])
  end

  private
  def post_params
    params.require(:post).permit(:title, :place, :image,:belongings, :sentence, :schedule,:time,{:target_ids=>[]}).merge(user_id: current_user.id)
  end

end
