class PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    @posts = current_user.posts.include_resources
    @posts = @posts.paginate(page: params[:page], per_page: 25)
  end

  def new
    @post = Post.new
  end

  def show
    post
  end

  def create
    @post = current_user.posts.new(post_params)

    if @post.save
      redirect_to post, flash: { success: "Your Post has been created successfully" }
    else
      render "new"
    end
  end

  def edit
    post
  end

  def update
    if post.update(post_params)
      redirect_to post, flash: { success: "Your Post has been updated successfully" }
    else
      render "edit"
    end
  end

  def destroy
    redirect_to post, flash: { success: "Your Post has been deleted successfully" } if post.destroy
  end

  private

  def post
    @post ||= Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
