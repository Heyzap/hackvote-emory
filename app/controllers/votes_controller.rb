class VotesController < ApplicationController
  before_action :logged_in_user, only: [:new]

	def new
		@project = Project.find(params[:project_id])

		unless session[:votes]
			session[:votes] = []
		end

		unless session[:votes][@project.hackday.id]
			session[:votes][@project.hackday.id] = 0
		end

		if session[:votes][@project.hackday.id] < 3
			session[:votes][@project.hackday.id] += 1
			vote = @project.votes.create!(user: User.find(session[:user_id]))
			vote.save
		else
			flash[:error] = "you have no more votes for this hackday left"
		end

		redirect_to @project
	end

  def logged_in_user
    unless logged_in?
      flash.now[:error] = "must be logged in"
      redirect_to signin_url
    end
  end
end
