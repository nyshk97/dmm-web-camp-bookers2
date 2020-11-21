module BooksHelper
  def book_posted_by_current_user?(book)
    book.user == current_user
  end
end
