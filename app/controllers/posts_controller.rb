class PostsController < ApplicationController
  
  def index
    @posts = Post.all 
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    if @post.save
      redirect_to posts_path, notice: "El post fue publicado con éxito"
    else
      render :new   # se ubica de nuevo en la vista que se indique
    end		
  end

  private 
    def post_params
      params.require(:post).permit(:titulo, :cuerpo)		
    end

end
