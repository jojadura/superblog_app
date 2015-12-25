# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  titulo     :string
#  cuerpo     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Post < ActiveRecord::Base
end
