class UsersController < ApplicationController
  def show
	@user = User.find(params[:id])
	@title = @user.name
  end
  def new
	@user = User.new
	@title = "Sign Up"
	
  end
  def create
	@user = User.new(params[:user])
	if @user.save
	 flash[:success] = "Welcom to the Twitter App BABY!"
	 redirect_to @user
	else
	  @title = "Sign Up"
	  flash[:error] = "What the garbage man!"
	  render 'new'
	end
  end
end
