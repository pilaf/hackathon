class CommentsController < ApplicationController
  before_filter :authorize, only:  [:create]

  def create
    @issue = Issue.find(params[:issue_id])
    @comment = @issue.comments.new(comment_params)

    if @comment.save
      redirect_to @issue
    else
      render @issue
    end
  end

  protected

  def comment_params
    params.require(:comment).permit(:content)
  end
end
