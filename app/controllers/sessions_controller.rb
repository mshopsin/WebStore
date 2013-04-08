class SessionsController < ApplicationController
  def new
  end

  def destroy
    cookies.delete(:user_id)
    redirect_to products_url
  end

  def create
    user = User.find_by_email(params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # Sign in the user
      sign_in user
      redirect_to user
    else
      flash[:error] = "Fail, password <=> email mismatch"
      render 'new'
      # Create an error message and re-render
    end
  end

end
