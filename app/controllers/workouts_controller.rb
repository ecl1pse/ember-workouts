class WorkoutsController < ApplicationController
  respond_to :json

  def index
    respond_with Workout.all
  end

  def show
    respond_with Workout.find(params[:id])
  end

  def new
    respond_with Workout.new(params[:workout])
  end

  def create
    respond_with Workout.create(workout_params)
  end

  private

  def workout_params
    params.require(:workout).permit(:title, :body)
  end
end
