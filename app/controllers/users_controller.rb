class UsersController < ApplicationController
  def new
  end

  def create
  	User.create!(username:params[:username], email:params[:email], bio:params[:bio])
  end
end
