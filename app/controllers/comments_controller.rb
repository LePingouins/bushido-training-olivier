class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.build(comment_params)
    if @comment.save
      redirect_to @article, notice: 'Comment was successfully created.'
    else
      redirect_to @article, alert: 'Failed to add comment.'
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:body)
    end
end
