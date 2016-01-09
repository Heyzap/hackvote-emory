class VotesController < ApplicationController
  def new
    @project = Project.find(params[:project_id])
    vote = @project.votes.create!()
    vote.user = User.find(session[:user_id])
    vote.save
    redirect_to @project
  end
end
