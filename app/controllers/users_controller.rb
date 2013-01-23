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



  def edit
    @user = User.find(session[:user_id])
  end



  def update
    @user = User.find(session[:user_id])
      if @user.update_attributes(params[:user])
        flash[:success] = "User was successfully updated"
        redirect_to root_path
      else
        render :action => "edit"
      end
    
  end

end
