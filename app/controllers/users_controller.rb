class UsersController < ApplicationController
  def home
  end

  def help
  end
	
  def new
	@user = User.new(params[:user])
  end

  def create
  	@user = User.new(params[:user])
	 if @user.save
	   sign_in @user
	   flash[:success] = "Welcome to the sample app!"
	   redirect_to @user
	 else
  	   render 'new'
	 end
  end

  def aboutus
  end
 
  def show
	@user = User.find(params[:id])
  end
end
