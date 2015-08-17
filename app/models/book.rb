class Book < ActiveRecord::Base
	validates :titulo, :autores, :editora, :anoPublica, :user_id, presence: true

	
end
