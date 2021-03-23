class PostsController < ApplicationController
  def index
    @post = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    if @post.valid?
      redirect_to root_path
    else

    end
  end

  private
  def post_params
    params.require(:post).permit(:execercisedate,:post,:execercise1,:execercise2,:execercise3,:execercise4,:execercise5,:image).merge(user_id: current_user.id)
  end
end
