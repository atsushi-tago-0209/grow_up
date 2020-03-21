def create
  @post = current_user.posts.new(post_params)

  if params[:back].present?
    render :new
    return
  end

  if @post.save
    postMailer.creation_email(@post).deliver_now
    redirect_to @post, notice:"タスク「#{@post.name}」を登録しました。"
  else
    render :new
  end
end
