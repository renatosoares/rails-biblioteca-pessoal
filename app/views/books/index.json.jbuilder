json.array!(@books) do |book|
  json.extract! book, :id, :titulo, :autores, :editora, :anoPublica
  json.url book_url(book, format: :json)
end
