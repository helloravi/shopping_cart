class Order < ActiveRecord::Base
  belongs_to :order_status
  has_many :order_items
  before_create :set_order_status
  before_save :update_subtotal

  PRICE_ZERO = 0

  def subtotal
    order_items.collect { |order_item| order_item.valid? ? (order_item.price) : PRICE_ZERO }.sum
  end

  def update_subtotal
  end

  def set_order_status
  end
end
