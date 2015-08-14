class AdminController < ApplicationController
  def index
  	@total_books = Book.count
  end
end
