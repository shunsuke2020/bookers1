class BooksController < ApplicationController
 
  def top
  end

  def index
  	@books = BOOK.all
  end

  def show
  	@book =Book.find(params[:id])
  end

  def new
  	@book = Book.new
  end

  def create
  	book =Book.new(book_params)
  	book.save
  	redirect_to_books_path(book.id)
  end

  def edit
  	@book =Book.find(parms[:id])
  end

  private
  def book_params
  	params.require(:book).permit(:title, :body)
  end

  

end
