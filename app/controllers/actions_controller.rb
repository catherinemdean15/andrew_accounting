class ActionsController < ApplicationController

  def index
    @actions = Action.all
  end

  def show
    @action = Action.find(params[:id])
  end

end
