class BooksController < ApplicationController

  def create
    @book = Book.index(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(book.id)
  end

  def index
    @books = Book.all
    @user = current_user
  end

  def show
  end

  def edit
  end

  private
    def book_params
      params.require(:book).permit(:title, :body)
    end

end