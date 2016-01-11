class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @hackday = Hackday.find(project_params[:hackday_id])
    @project = Project.new(project_params)
    @project.hackday = @hackday
    if @project.save
      redirect_to @project
    else
      render 'new'
    end
  end

  private

  def project_params
    params.require(:project).permit(:name, :hackday_id)
  end
end
