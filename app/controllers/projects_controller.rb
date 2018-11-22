class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.where(user_id: current_user)
  end

  def show
    @prestations = Prestation.where(project_id: @project)
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.user_id = current_user.id
    if @project.save
      redirect_to projects_path(@project)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @project.update(project_params)
    redirect_to projects_path(@project)
  end

  def destroy
    @project.destroy
    redirect_to projects_path
  end

  private

  def project_params
    params.require(:project).permit(:title, :description, :date, :photo, :photo_cache)
  end

  def set_project
    @project = Project.find(params[:id])
  end
end
