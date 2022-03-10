class AuthorsController < ApplicationController
  def index
    @authors = Author.all
    @books = Book.all
  end
  def show
    @author = Author.find(params[:id])
    @book = @author.book
  end
  def new
    @author = Author.new
    @author.build_book
  end
  def create
    @author = Author.new(author_params)
    
    if @author.save
      redirect_to @author
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def author_params
      params.require(:author).permit(:name, book_attributes: [:title, :published_at])
    end
end
