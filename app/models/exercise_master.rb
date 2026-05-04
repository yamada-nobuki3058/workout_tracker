# frozen_string_literal: true

class ExerciseMaster < ApplicationRecord
  # 外部キーの nill を許可する
  belongs_to :user, optional: true

  enum :exercise_type, { weight: 0, cardio: 1 }

  validates :name, presence: true
  validates :exercise_type, presence: true
end
