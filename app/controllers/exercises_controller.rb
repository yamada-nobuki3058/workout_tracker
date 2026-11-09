# frozen_string_literal: true

class ExercisesController < ApplicationController
  before_action :authenticate_user!

  def create
    @workout = current_user.workouts.find(params[:workout_id])
    @exercise = @workout.exercises.build(exercise_params)
    @exercise.position = next_position

    save_exercise
  end

  private

  def save_exercise
    if @exercise.save
      redirect_to workout_path(@workout), notice: '種目を追加しました'
    else
      redirect_to workout_path(@workout),
                  alert: @exercise.errors.full_messages.to_sentence
    end
  end

  def next_position
    (@workout.exercises.maximum(:position) || 0) + 1
  end

  def exercise_params
    params.require(:exercise).permit(:exercise_master_id)
  end
end
