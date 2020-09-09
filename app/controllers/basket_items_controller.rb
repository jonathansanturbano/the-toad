class BasketItemsController < ApplicationController

  def create
    if !params[:book_id].nil?
      item = Book.find(params[:book_id])
      current_path = book_path(item.id)
    else
      item = Goodie.find(params[:goody_id])
      current_path = goody_path(item.id)
    end
    item_id = @basket.basketItems.find do |item_to_find|
      item_to_find.buyable == item
    end
    if !item_id.nil?
      @basket_item = BasketItem.find(item_id.id)
      @basket_item.update(quantity: @basket_item.quantity + 1, total_price_item: @basket_item.total_price_item + @basket_item.buyable.price)
    else
      @basket_item = BasketItem.new(buyable: item, basket_id: @basket.id, total_price_item: item.price)
      @basket_item.save
    end
  end

  def update
    basket_item = BasketItem.find(params[:id])
    if params[:commit] == "-"
      basket_item.update(quantity: basket_item.quantity - 1, total_price_item: basket_item.total_price_item - basket_item.buyable.price)
    else
      basket_item.update(quantity: basket_item.quantity + 1, total_price_item: basket_item.total_price_item + basket_item.buyable.price)
    end
    redirect_to basket_path(anchor: "item-#{basket_item.id}")
  end

  def destroy
    @basket_item = BasketItem.find(params[:id])
    @basket_item.destroy
    redirect_to basket_path
  end

  # private



  # def basket_item_params
  #   params.require(:basket_item).permit(:buyable_type, :basket_id)
  # end
end
