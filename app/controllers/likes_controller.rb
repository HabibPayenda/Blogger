class LikesController < ApplicationController
  def create
    @like = Like.new(AuthorId: current_user.id, post: Post.find(params[:post_id]))
    redirect_to user_post_path if @like.save
  end
end
