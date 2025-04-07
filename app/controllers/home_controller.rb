class HomeController < ApplicationController
  def index
    @recent_orders = Order.order(order_date: :desc).limit(5)
  end
end
