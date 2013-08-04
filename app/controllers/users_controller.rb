class UsersController < ApplicationController
  before_filter :user_signed_in?
  def show
    @user = User.find(params[:id])
    render :show 
  end

  def destroy
    User.find(params[:id]).delete
  end
end
