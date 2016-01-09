class VotesController < ApplicationController
  def new
    @project = Project.find(params[:project_id])
    @project.votes.create!()
    redirect_to @project
  end
end
