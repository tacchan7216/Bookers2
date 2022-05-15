class BooksController < ApplicationController

  def create
  end

  def index
    
  end

  def show
  end

  def edit
  end

  private
    def book_params
    require(:book).permit(:title,:body)
  end

end