class BasketItemsController < ApplicationController
  before_action :set_basket_item, only: [:update, :destroy]
  def create
    add_item_to_cart
  end

  def update
    if @basket_item.signed == true
      total_price_item = (@basket_item.buyable.price + @basket_item.buyable.signature_fee)
    else
      total_price_item = @basket_item.buyable.price
    end
    if params[:commit] == "-"
      @basket_item.update(quantity: @basket_item.quantity - 1, total_price_item: @basket_item.total_price_item - total_price_item)
    else
      @basket_item.update(quantity: @basket_item.quantity + 1, total_price_item: @basket_item.total_price_item + total_price_item)
    end
    redirect_to basket_path(anchor: "item-#{@basket_item.id}")
  end

  def destroy
    @basket_item.destroy
    redirect_to basket_path
  end

  private

  def set_basket_item
    @basket_item = BasketItem.find(params[:id])
  end

  def add_item_to_cart
    if !params[:book_id].nil?
      add_book
    else
      add_goodie
    end
  end

  def add_book
    book = Book.find(params[:book_id])
    book_id = @basket.basketItems.find do |item_to_find|
      if item_to_find.buyable_type == "Book"
        params[:basket_item][:signed] == "1" ? item_to_find.signed == true : item_to_find.signed == false;
      end
    end
    if !book_id.nil?
      @basket_item = BasketItem.find(book_id.id)
      if params[:basket_item][:signed] == "1"
        total_price_item = @basket_item.total_price_item + @basket_item.buyable.price + book.signature_fee
      else
        total_price_item = @basket_item.total_price_item + @basket_item.buyable.price
      end
      @basket_item.update(quantity: @basket_item.quantity + 1, total_price_item: total_price_item)
    else
      if params[:basket_item][:signed] == "1"
        @basket_item = BasketItem.new(buyable: book, basket_id: @basket.id, total_price_item: book.price + book.signature_fee, signed: true)
      else
        @basket_item = BasketItem.new(buyable: book, basket_id: @basket.id, total_price_item: book.price, signed: false)
      end
      @basket_item.save
    end
  end

  def add_goodie
    goodie = Goodie.find(params[:goody_id])
    goodie_id = @basket.basketItems.find do |item_to_find|
      item_to_find.buyable_type == "Goodie" && item_to_find.buyable.id == goodie.id
    end
    if !goodie_id.nil?
      @basket_item = BasketItem.find(goodie_id.id)
      @basket_item.update(quantity: @basket_item.quantity + 1, total_price_item: @basket_item.total_price_item + goodie.price)
    else
      @basket_item = BasketItem.new(buyable: goodie, basket_id: @basket.id, total_price_item: goodie.price)
      @basket_item.save
    end
  end

  # def find_item_in_basket(item)
  #   @basket.basketItems.find do |item_to_find|
  #     item_to_find.buyable == item
  #     if item_to_find.buyable.class == Book && item.class == Book
  #       item_to_find.signed == true if params[:basket_item][:signed] == "1"
  #       item_to_find.signed == false if params[:basket_item][:signed] == "0"
  #     end
  #   end
  # end

  # def basket_item_params
  #   params.require(:basket_item).permit(:buyable_type, :basket_id)
  # end
end
