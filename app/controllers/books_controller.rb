class BooksController < ApplicationController
  before_action :build_book_object
  
  def show
  end
  
  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to books_url
    else
      render 'books/index'
    end
  end

  def edit
  end

  def index
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :opinion).merge(user_id: current_user.id)
  end
end