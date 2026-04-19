class WorkoutsController < ApplicationController
  before_action :authenticate_user!

  def index
    @workout = current_user.workouts.order(date: :desc)
  end

  def new
    @workout = current_user.workouts.new
  end

  def create
    @workout = current_user.workouts.new(workout_params)

    if @workout.save
      redirect_to root_path, notice: "ワークアウトを作成しました"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def workout_params
    params.require(:workout).permit(:date)
  end
end
