class UsersController < ApplicationController
  before_filter :authorize, only: :show

  def show
    @user = User.find(params[:id])
  end


  private

    def authorize
      params[:id] == cookies[:user_id]
    end
end
