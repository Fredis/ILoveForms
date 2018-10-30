class UsersController < ApplicationController
  
  def new
    @user = User.new
  end

  def create
  	if params[:user]
    	User.create!(username: params[:user][:username], email: params[:user][:email], bio: params[:user][:bio])
    else
    	User.create!(username:params[:username], email:params[:email], bio:params[:bio])
    end 
  end

end
