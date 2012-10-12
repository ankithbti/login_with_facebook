class ProjectsController < ApplicationController
	def new
		@project = Project.new
	end

	def show
		@projects = Project.paginate(page: params[:page], per_page: 5)
		@add_new = "Add New"
	end

	def create
		@project = Project.new(params[:project])
		if @project.save
			flash[:success] = "Save successful."
			redirect_to root_path
		else
			flash.now[:error] = 'Invalid value provided.'
			render 'new'
		end
	end
end
