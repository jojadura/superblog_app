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

	
	validates :titulo, presence: true
    
end
