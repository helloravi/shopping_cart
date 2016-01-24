require 'test_helper'

class OrderItemTest < ActiveSupport::TestCase
  def test_order_item_calculates_correct_price
    product = Product.create(name: 'example', price: 10)
    order = Order.create
    order_item = OrderItem.create(product_id: product.id, order_id: order.id, quantity: 3)

    assert_equal(order_item.total, 30)
  end
end
