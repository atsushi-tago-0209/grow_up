class PostsController < ApplicationController
  before_action :set_post ,only: [:show, :edit, :update]

  def index
    @posts = Post.all
    @keyword = Post.ransack(params[:q])
    @posts = @keyword.result(distinct: true)
    @posts = Post.includes(:user).order("created_at DESC").page(params[:page]).per(8)
    @parents = Category.where(ancestry: nil)
    @category_parent_array= Category.where(ancestry: nil).pluck(:name,:id)
    @category_parent_array.prepend(["すべて",""])
    @parents = Category.all.order("id ASC").limit(8)
  end

  def search
    @keyword = Post.search(search_params)
    @posts = @keyword.result(distinct: true)
  end

  def new
    @post = Post.new
    @targets = Target.all
    @category_parent_array = ["---"]
    @parents = Category.where(ancestry: nil)
    @category_parent_array = Category.where.not(ancestry: nil).pluck(:name,:id)
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = "投稿を作成しました"
      render "create"
    else
      render "new"
    end
  end

  def show
    @posts = Post.includes(:user)
    @posts = Post.includes(:user).order("created_at DESC").page(params[:page]).per(8)
    # @like = Like.new
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

  def get_category_children
    @category_children = Category.find_by(id: "#{params[:parent_id]}", ancestry: nil).children
  end

  def set_post
    @post = Post.find(params[:id])
  end

  private
  def post_params
    params.require(:post).permit(:title, :place, :image,:belongings, :sentence, :category_id,:schedule,:time, :endtime,:capacity,:fee,{:target_ids=>[]}).merge(user_id: current_user.id)
  end

  def search_params
    params.require(:q).permit!
  end

end
