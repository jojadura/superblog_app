class CommentsController < ApplicationController
    

def create
    @post = Post.find(params[:post_id])  #rake routes muestra /posts/:post_id/comments, de ahi sale :post_id, que es el valor que va por la URL.    
    @comment = @post.comments.new(comment_params)
    if @comment.save      
        redirect_to @post
    else
      @post = Post.find(params[:post_id])
      render "posts/show"
    end   
end

  private 
    def comment_params
      params.require(:comment).permit(:body,:user_id)
    end
end
