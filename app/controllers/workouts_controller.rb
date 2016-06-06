class WorkoutsController < ApplicationController

  def new
    @athlete = Athlete.find(params[:athlete_id])
    @workout = Workout.new
  end

  def create
    # find athlete - move this to a before filter
    @athlete = Athlete.find(params[:athlete_id])
    @workout = @athlete.workouts.new(workout_params)
    if @workout.save
      flash[:notice] = "Workout Successfully Created"
      redirect_to athlete_workout_path(@athlete, @workout)
      # redirect_to athlete_workout_path[@athlete, @workout]
    else
      render :new
    end
  end

  def show
    @athlete = Athlete.find(params[:athlete_id])
    @workout = Workout.find(params[:id])
  end

  def index
    @athlete = Athlete.find(params[:athlete_id])
    @workouts = @athlete.workouts.all
  end

  private

  def workout_params
    params.require(:workout).permit(:time, :distance,)
  end

end
