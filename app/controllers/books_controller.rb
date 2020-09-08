class BooksController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_basket

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
    @basketItem = BasketItem.new
  end
end
