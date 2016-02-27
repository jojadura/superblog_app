class PostsController < ApplicationController
  
  def index
    @posts = Post.all.order("created_at DESC")
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    if @post.save
      redirect_to posts_path, notice: "El Post fue creado exitosamente."
    else
      render :new   # se ubica de nuevo en la vista que se indique
    end		
  end

  def show
    @post = Post.find(params[:id])    
    #Para el comentario, que pertenece a un post especifico.
    @comment = Comment.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
      @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to posts_path, notice: "El Post fue modificado exitosamente."
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to posts_path, notice: "El Post fue eliminado exitosamente."
  end

  private 
    def post_params
      params.require(:post).permit(:titulo, :cuerpo)		
    end

end
