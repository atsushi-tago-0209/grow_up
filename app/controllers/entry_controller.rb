class EntryController < ApplicationController
  before_action :post_entry,only: [:new,:create]
  def new
  end

  def create
    if Entry.create(entry_params)
      redirect_to root_path
    else
      render "new"
    end
  end

  private
  def entry_params
    params.permit(:post_id).merge(user_id: current_user.id)
  end

  def post_entry
    @post = Post.find(params[:post_id])
  end
end
