module ApplicationHelper
  def full_title(page_title = '')
    base_title = 'Sal Hendrie'
    if page_title.empty?
      base_title
    else
      page_title + ' | ' + base_title
    end
  end

  def user_has_items?
    user_signed_in? && @basket.basketItems.count > 0
  end

  def user_has_empty_cart?
    user_signed_in? && @basket.basketItems.count == 0
  end

  def user_is_on_purchasing_pages?
    (controller_name == 'pages' && action_name == 'checkout') || (controller_name == 'baskets' && action_name == 'show')
  end
end
