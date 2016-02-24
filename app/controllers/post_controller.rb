class PostController < ApplicationController
  def index
  end

def new
	@post = Post.new
end

def create
	@post = Post.new(product_params)
	@post.user = current_user
	if @post.save
		redirect_to post_path, notice: "El post fue publicado con éxito"
	else
		render :new   # se ubica de nuevo en la vista que se indique
	end		
end

end
