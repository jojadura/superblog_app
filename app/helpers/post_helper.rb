module PostHelper
	def form_title
		@post.new_record? ? "Publicar Post" : "Modificar Post"		
	end	
end
