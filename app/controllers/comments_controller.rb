class CommentsController < ApplicationController
    

def create
    p "Hola"
    p params[:post_id]
    p params[:user_id]
    post = Post.find(params[:post_id])  #rake routes muestra /posts/:post_id/comments, de ahi sale :post_id, que es el valor que va por la URL.    
    user = User.find(params[:user_id])     
    p post
    p user
    exit
    @comment = post.comments.new(comment_params)
    if @comment.save      
        redirect_to post
    else
      @comment = Post.find(params[:post_id])
      render "posts/show"
    end   
end

  private 
    def comment_params
      params.require(:comment).permit(:body)
    end
end
