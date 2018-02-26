# COMMENTS CONTROLLER
# MODEL: Comment (:user, :content)
class CommentsController < ApplicationController
  before_action :find_comment, only: %i[destroy]

  # Generates an empty instance for Comment model
  # Also defines the initial @post_name for rendering in the page
  def new
    @comment = Comment.new(post_id: params[:post_id])
    @post_name = Post.find(@comment.post_id).title
  end

  # Generates an instance for Comment model with the parameters filled
  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      redirect_to post_path(@comment.post_id)
    else
      @post_name = Post.find(@comment.post_id).title
      render 'new'
    end
  end

  # Obtains the correct Comment with before_action and destroys it
  def destroy
    @comment.destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:user, :content, :post_id)
  end

  def find_comment
    @comment = Comment.find(params[:id])
  end
end
