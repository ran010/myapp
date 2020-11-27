class CommentsController < ApplicationController
  before_action :authenticate_user!, only: :create

  # POST /ideas/:idea_id/comments
  def create
    @idea = Idea.find(params[:idea_id])
    @comment = @idea.comments.create(comment_params.merge(user_id: current_user.id))
    if @comment.save
      redirect_to idea_path(@idea)
    else
      redirect_to idea_path(@idea)
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    if @comment.user == current_user
      @comment.destroy
      redirect_to root_path
    end
  end

  private
    # Only allow a list of trusted parameters through.
    def comment_params
      params.require(:comment).permit( :body, :idea_id)
    end
end
