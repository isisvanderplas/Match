class TeamingsController < ApplicationController
  def index
    @teams = Teamings.all
  end
end
