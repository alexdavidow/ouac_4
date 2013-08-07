class UsersController < ApplicationController
  before_filter :user_signed_in?
  def show
    @user = User.find(params[:id])
    render :show 

  def destroy
    User.find(params[:id]).delete
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      redirect_to user_path
    else 
      @user.errors.each do |e|
        puts e
      end
      render 'edit'
    end
  end

end
