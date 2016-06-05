class AthletesController < ApplicationController

  def index
    @athletes = Athlete.all
  end

  def show
    @athlete = Athlete.find(params[:id])
  end

  def new
    @athlete = Athlete.new
  end

  def create
    @athlete = Athlete.new(athlete_params)
    if @athlete.save
      flash[:notice] = "Athlete Successfully Created!"
      redirect_to @athlete
    else
      render :new
    end
  end

  def edit
    @athlete = Athlete.find(params[:id])
  end

  def update
    @athlete = Athlete.find(params[:id])
    if @athlete.update(athlete_params)
      redirect_to athlete_path(@athlete)
    else
      render athlete_path_edit
    end
  end

  def destroy
    @athlete = Athlete.find(params[:id])
    @athlete.destroy
    redirect_to athletes_path
  end

  private

  def athlete_params
    params.require(:athlete).permit(:name, :height, :weight, :age, :location, :image_path)
  end

end
