class ProjectsController < ApplicationController

	skip_before_filter :require_login, :except => [:destroy]

	# def index
	# 	@projects = Project.all
	# 	if @projects.empty?
	# 		flash[:error] = "Threre are no projects to view, create new project to proceed"
	# 	end
	# 	@project = Project.new
	# end

	def create
		@project = Project.new(params[:project])
		if @project.save
			flash[:success] = "Project was successfully created"
			redirect_to weekly_path
		else
			render :new
		end
	end

	def update
		@project = Project.find(params[:id])
		@project.update_attributes(params[:project])
		flash[:success] = "Project has been successfully updated."
		# respond_with (@project)
		redirect_to '/weekly'
	end


	def destroy
		Project.find(params[:id]).destroy
		flash[:success] = "Project has been deleted."
		redirect_to '/weekly'
	end



	def show_weekly
		@projects = Project.all
		@tasks = Task.all
		@active = Task.find(:all, :conditions => {:status => true})
		@inactive = Task.find(:all, :conditions => {:status => false})

		if @projects.empty?
			flash[:error] = "Threre are no projects to view, create new project to proceed"
		end
		@project = Project.new
	end


	def edit_weekly
		@project = Project.find(params[:id])
		
	end

end
