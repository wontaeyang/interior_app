class UsersController < ApplicationController

  skip_before_filter :require_login, :only => [:index, :new, :create]

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(params[:user])
  	if @user.save
      flash[:success] = "User was successfully created"
  		redirect_to root_path
  	else
  		render :new
  	end
  	
  end
end
