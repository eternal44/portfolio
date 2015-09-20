class ProjectsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :destroy, :edit, :update]
  before_action :set_project, only: [:edit, :update, :destroy, :show]

  def index
    @projects = Project.all
  end

  def new
  end

  def create
    @project = Post.new(post_params)
  end

  def edit
  end

  def update
    @project.update(project_params)
    redirect_to projects_path
  end

  def destroy
    @project.destroy
  end

  private
    def set_project
      @project = Project.find(params[:id])
    end

    def project_params
      # add photos later
      params.require(:project).permit(:title, :subhead, :description, :url)
    end
end
