class ProjectsController < ApplicationController

	skip_before_filter :require_login, :except => [:destroy]

	def index
	@projects = Project.all
	if @projects.empty?
		flash[:error] = "Threre are no projects to view, create new project to proceed"
	end
	@project = Project.new
	end

	# def new
	#   	@project = Project.new
	# end

	def create
	  	@project = Project.new(params[:project])
	  	if @project.save
	      flash[:success] = "Project was successfully created"
	  		redirect_to projects_path
	  	else
	  		render :new
	  	end
	end

	def destroy
	Project.find(params[:id]).destroy
	flash[:success] = "Project has been deleted."
	redirect_to '/projects'
	end

	def show
		@project = Project.find(params[:id])
		@tasks = @project.tasks.all
	end


end
