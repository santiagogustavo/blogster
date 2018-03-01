# COMMENTS CONTROLLER
# MODEL: Comment (:content, :post_id, :user_id)
class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_comment, except: :create

  # Generates an instance for Comment model with the parameters filled
  def create
    @comment = current_user.comments.create(comment_params)
    @comment.save
    redirect_to post_path(@comment.post)
  end

  # Passthrough for getting the correct Comment with before_action
  def edit
    @post_name = find_post_name
  end

  def update
    if @comment.update(comment_params)
      redirect_to post_path(@comment.post)
    else
      @post_name = find_post_name
      render 'edit'
    end
  end

  # Obtains the correct Comment with before_action and destroys it
  def destroy
    @comment.destroy
    redirect_back(fallback_location: root_path)
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id)
  end

  def find_comment
    @comment = current_user.comments.find(params[:id])
  end

  def find_post_name
    @post_name = @comment.post.title
  end
end
