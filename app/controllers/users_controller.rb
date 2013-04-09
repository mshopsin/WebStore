class UsersController < ApplicationController
  before_filter :authorize, only: :show

  def show
    @user = User.find(params[:id])
  end

  def add_to_cart
    cookies[:cart] = cookies[:cart] ?
          "#{cookies[:cart]}, #{params[:product_id]}" : "#{params[:product_id]}"
    flash[:success] = "Added #{Product.find(params[:product_id])} to cart"
    redirect_to user_url(cookies[:user_id])
  end


  private

    def authorize
      params[:id] == cookies[:user_id]
    end
end
