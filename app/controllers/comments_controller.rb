class CommentsController < ApplicationController
  # フォームで入力されたコメントを保存したい
  def create
    comment = Comment.new(text: params[:comment][:text], user_id: current_user.id, prototype_id: params[:comment][:prototype_id])
    # @comment = Comment.new(comment_params)
    if comment.save
      # @prototype = @comment.prototype
      # comments = @prototype.comments
      redirect_to prototype_path(params[:comment][:prototype_id])
      # render "prototypes/show"
      
      # redirect_to prototype_path(@comment.prototype)
    else
      redirect_to root_path
      # render "prototypes/show"
    end

    def show
    end
  end

#   private

#   def comment_params
#     params.require(:comment).permit(:text, :user_id, :prototype_id).merge(user_id: current_user.id , prototype_id: prototype.id)
#     # prototype_idの記述が分からない
#   end
end