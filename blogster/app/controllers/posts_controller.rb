# POSTS CONTROLLER
# MODEL: Post (:title, :content, :category_id)
class PostsController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]
  before_action :find_user_post, only: %i[edit update destroy]
  before_action :find_post, only: :show

  # Returns the variable @posts with all the entries for Post model
  def index
    if params[:category].blank?
      @posts = Post.all.order('created_at DESC').page(params[:page])
    else
      @category = Category.friendly.find(params[:category])
      @posts = @category.posts.order('created_at DESC').page(params[:page])
    end
    redirect_to root_path if @posts.empty? && !Post.all.empty?
  end

  # Passthrough for getting the correct Post with before_action
  def show
    @comment = Comment.new(post_id: @post.id)
    @comments = @post.comments.order('created_at DESC').page(params[:page])
    redirect_to post_path(@post) if @comments.empty? && !@post.comments.empty?
  end

  # Generates an empty instance for Post model
  def new
    @post = Post.new
  end

  # Generates an instance for Post model with the parameters filled
  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to @post, notice: 'Post created successfully!'
    else
      render 'new'
    end
  end

  # Passthrough for getting the correct Post with before_action
  def edit; end

  def update
    if @post.update(post_params)
      redirect_to @post, notice: 'Post updated successfully!'
    else
      render 'edit'
    end
  end

  # Obtains the correct Post with before_action and destroys it
  def destroy
    @post.destroy
    redirect_to root_path, notice: 'Post destroyed successfully!'
  end

  private

  def post_params
    params.require(:post)
          .permit(:title, :content, :category_id)
          .merge(user_id: current_user.id)
  end

  def find_post
    @post = Post.friendly.find(params[:id])
  end

  def find_user_post
    @post = current_user.posts.friendly.find(params[:id])
  end
end
