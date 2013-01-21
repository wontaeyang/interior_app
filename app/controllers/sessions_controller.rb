class SessionsController < ApplicationController

  skip_before_filter :require_login, :except => [:destroy]

  def new
  	@user = User.new
  end


  def create
  	if @user = login(params[:username],params[:password],params[:remember_me])
  		flash[:success] = "Welcome to the Sample App!"
      redirect_back_or_to root_path

  	else
  		flash[:error] = "Email or password was invalid"
  		redirect_to :root
  	end
  	
  end



  def destroy
  	logout
  	redirect_to root_path, notice: "Logged out!"
  end



end
