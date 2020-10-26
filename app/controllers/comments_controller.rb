class CommentsController < ApplicationController
  # フォームで入力されたコメントを保存したい
  def create
    @comment = Comment.create(comment_params)
    if @comment.save
      redirect_to prototype_path(@comment.prototype)
    else
      @prototype = @comment.prototype
      @comments = @prototype.comments
      render "prototypes/show"
    end

    def show
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id , prototype_id: current_user.id)
    # prototype_idの記述が分からない
  end
end