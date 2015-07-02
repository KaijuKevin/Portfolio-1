class ProjectsController < ApplicationController
  def new
    @category = Category.find(params[:category_id])
    @project = @category.projects.new
  end

  def create
    @category = Category.find(params[:category_id])
    @project = @category.projects.new(project_params)
    if @project.save
      redirect_to category_path(@project.category)
    else
      render :new
    end
  end

private
  def task_params
    params.require(:project).permit(:description, :name, :link)
  end
end
