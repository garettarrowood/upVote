class PostsController < ApplicationController
  before_action :set_post, only: [:show]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to post_path(@post), :notice => "Nice work, writing that post!"
    else
      render :new, notice: "Whoops! Try again."
    end
  end

  def show
    @vote = Vote.new
  end

  private

    def post_params
      params.require(:post).permit(:title, :content)
    end

    def set_post
      @post = Post.find(params[:id])
    end

end
