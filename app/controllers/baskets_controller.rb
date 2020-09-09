class BasketsController < ApplicationController
  # TAKE OUT WHEN SUCCESSFULLY TESTED
  before_action :set_basket

  def show
    @basket.price_cents = 0.0
    @basket.basketItems.each do |item|
      @basket.price_cents = @basket.price_cents.to_f + item.total_price_item
    end
    @basket.price_cents = (@basket.price_cents.to_f * 100).to_i
  end

  # def update
  #   @basket = Basket.new(basket_params)
  #   @basket.items << params[:basket][:item]
  #   @basket.update
  #   redirect_to root_path
  # end

  private

  def basket_params
    params.require(:basket).permit(:user_id, :item)
  end
end
