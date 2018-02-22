# class Controller
#   def action; end
# end

# POSTS CONTROLLER
# MODEL: Post (:title, :content, :category_id)
class PostsController < ApplicationController
  before_action :find_post, only: %i[show edit update destroy]
  # Returns the variable @posts with all the entries for Post model
  def index
    if params[:category].blank?
      @posts = Post.all.order('created_at DESC')
    else
      @category_name = params[:category]
      @category_id = Category.find_by(name: params[:category])
      @posts = Post.where(category_id: @category_id).order('created_at DESC')
    end
  end

  # Passthrough for getting the correct Post with before_action
  def show; end

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
    params.require(:post).permit(:title, :content, :category_id)
  end

  def find_post
    @post = Post.find(params[:id])
  end
end
