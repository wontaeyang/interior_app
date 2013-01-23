class ProjectsController < ApplicationController

skip_before_filter :require_login, :except => [:destroy]

def show
@project = Project.all
end


def new
  	@project = Project.new
end


def create
  	@project = Project.new(params[:project])
  	if @project.save
      flash[:success] = "Project was successfully created"
  		redirect_to root_path
  	else
  		render :new
  	end
end



end
