# app/controllers/books_controller.rb
class BooksController < ApplicationController
  # ...
  def new
    if params[:author_id]
      # This is the nested route, /author/:author_id/books/new
      author = Author.find_by(id: params[:author_id])
      @book = author.books.new

    else
      # This is the 'regular' route, /books/new
      @book = Book.new
    end
  end
  # ...
end