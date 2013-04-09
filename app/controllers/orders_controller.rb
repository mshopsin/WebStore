class OrdersController < ApplicationController
  before_filter :signed_in?

  def new
    product_ids = cookies[:cart].split(',').map { |id| id.to_i }
    @order = Order.new(user_id: params[:user_id], product_ids: product_ids)
    @order.save!
  end

  def confirm_order
    @order = Order.find(params[:id])
    #emnpty cart
    #bill through stripe
    email.deliver
  end
end