class BooksController < ApplicationController
  def index
    @books = Book.all
  end
  
  def show
    @book = Book.find(params[:id])
  end
  
  def new
    @book  = Book.new
  end
  
  def create
    @book = Book.new(book_params)
    @book.save
    
    redirect_to books_path
  end
  
  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    
    redirect_to book_path(@book)
    # redirect_to book_path これでもいけるよ
    #redirect_to "/items/#{@book.id}" これと意味一緒だけど推奨しないよ
  end
  
  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    
    redirect_to books_path
  
  private
  # Strong Prameters
  def book_params
    params.require(:book).permit(:name, :price, :publish, :publish_date)
  end
end
