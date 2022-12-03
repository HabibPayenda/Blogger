class PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
  end

  def show
    @user = User.find(params[:user_id])
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params)
    @post.AuthorId = current_user.id
    @post.like_counter = 0
    @post.comment_counter = 0
    return unless @post.save

    redirect_to posts_new_path
  end

  def new
    @post = Post.new
  end

  private

  def post_params
    params.require(:post).permit(:Title, :Text)
  end
end
