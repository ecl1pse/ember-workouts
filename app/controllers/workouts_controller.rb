class WorkoutsController < ApplicationController
  respond_to :json

  def index
    respond_with Workout.all
  end

  def show
    respond_with Workout.find(params[:id])
  end
end
