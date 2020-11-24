class BooksController < ApplicationController
  before_action :build_book_object
  layout 'logged_in_template'
  
  def show
    @book = Book.find(params[:id])
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
    @book = Book.find(params[:id])
    render :layout => 'application'
  end
  
  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to books_url
    else
      render 'books/edit'
    end
  end

  def index
    @books = Book.all.includes(:user)
  end
  
  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_url
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :opinion).merge(user_id: current_user.id)
  end
end
