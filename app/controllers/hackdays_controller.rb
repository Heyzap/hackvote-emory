class HackdaysController < ApplicationController
  def index
    @hackdays = Hackday.all
  end
end
