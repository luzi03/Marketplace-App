class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user_listings = @user.listings
   
  end

  def index
    @users = User.all 
  
  end

end