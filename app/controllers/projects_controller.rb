class ProjectsController < ApplicationController
  before_action :all_projects, only: [:index]
  respond_to :html, :js

  private

    def all_projects
      @projects = Project.all
    end
end
