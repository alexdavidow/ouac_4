class UsersController < ApplicationController
  before_filter :user_signed_in?
  def show
    render :show 
  end

  def destroy
    User.find(params[:id]).delete
  end
end
