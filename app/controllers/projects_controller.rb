class ProjectsController < ApplicationController
  respond_to :html, :js

  def index
    @projects = Project.all
  end

end
