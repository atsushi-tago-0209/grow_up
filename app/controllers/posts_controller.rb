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
    # binding.pry
  end

  def search
    @keyword = Post.search(search_params)
    @posts = @keyword.result(distinct: true)
  end

  def new
    @post = Post.new
    @targets = Target.all
  end

  def create
    if Post.create(post_params)
      redirect_to ""
    else
      render "new"
    end
  end

  def show
    @posts = Post.includes(:user)
    @posts = Post.includes(:user).order("created_at DESC").page(params[:page]).per(8)
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
    @category_children = Category.find_by(name: "#{params[:parent_name]}", ancestry: nil).children
  end

  def set_post
    @post = Post.find(params[:id])
  end

  private
  def post_params
    params.require(:post).permit(:title, :place, :image,:belongings, :sentence, :schedule,:time, :endtime,:capacity,{:target_ids=>[]}).merge(user_id: current_user.id)
  end

  def search_params
    params.require(:q).permit!
  end

end
