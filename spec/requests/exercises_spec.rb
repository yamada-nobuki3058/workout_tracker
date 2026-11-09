# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Exercises', type: :request do
  subject(:create_exercise) do
    post workout_exercises_path(workout),
         params: { exercise: { exercise_master_id: exercise_master_id } }
  end

  let(:user) { create(:user) }
  let(:workout) { create(:workout, user: user) }
  let(:exercise_master) { create(:exercise_master) }
  let(:exercise_master_id) { exercise_master.id }

  before do
    sign_in user
  end

  describe 'POST /workouts/:workout_id/exercises' do
    context 'when a valid exercise is selected' do
      it 'creates an Exercise' do
        expect { create_exercise }.to change(Exercise, :count).by(1)
      end

      it 'redirects to the workout detail page' do
        create_exercise
        expect(response).to redirect_to(workout_path(workout))
      end
    end

    context 'when no exercise is selected' do
      let(:exercise_master_id) { '' }

      it 'does not create an Exercise' do
        expect { create_exercise }.not_to change(Exercise, :count)
      end

      it 'redirects to the workout detail page' do
        create_exercise
        expect(response).to redirect_to(workout_path(workout))
      end
    end

    context 'when another user owns the workout' do
      let(:workout) { create(:workout) }

      it 'does not create an Exercise' do
        expect { create_exercise }.not_to change(Exercise, :count)
      end

      it 'returns a 404 status' do
        create_exercise
        expect(response).to have_http_status(:not_found)
      end
    end
  end
end
