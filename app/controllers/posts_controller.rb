class PostsController < ApplicationController
  before_action :authenticate_user!, only: [ :new, :create ]
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params)

    if @post.save
      redirect_to posts_index_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def require_login
    if current_user.logged_in?
    # allow the user to perform the action they wanted
    else
      redirect_to new_user_session_path
    end
  end

  def post_params
    params.require(:post).permit(:title, :post_content)
  end
end
