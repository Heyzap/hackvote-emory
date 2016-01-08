class HackdaysController < ApplicationController
  def index
    @hackdays = Hackday.all
  end

  def show
    @hackday = Hackday.find(params[:id])
  end

  def new
    @hackday = Hackday.new
  end

  def create
    @hackday = Hackday.new(hackday_params)
    if @hackday.save
      redirect_to @hackday
    else
      render 'new'
    end
  end

  private

  def hackday_params
    params.require(:hackday).permit(:name, :start, :end)
  end
end
