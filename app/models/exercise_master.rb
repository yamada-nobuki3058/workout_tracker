# frozen_string_literal: true

class ExerciseMaster < ApplicationRecord
  # 外部キーの nill を許可する
  belongs_to :user, optional: true
  has_many :exercises, dependent: :restrict_with_exception
  # TODO: 将来的に論理削除に変更

  enum :exercise_type, { weight: 0, cardio: 1 }

  validates :name, presence: true
  validates :exercise_type, presence: true
end
