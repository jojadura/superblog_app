# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  titulo     :string
#  cuerpo     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Post < ActiveRecord::Base
	belongs_to :user
	has_many :comments

	
	validates :titulo, :presence => {:message => "no puede estar en blanco" }, length: {maximum: 20, :message => "es demasiado largo (20 caracteres maximo)"}
	validates :cuerpo, :presence => {:message => "no puede estar en blanco" }, length: {minimum: 250, :message => "es demasiado corto (250 caracteres mínimo)"}
    
end
