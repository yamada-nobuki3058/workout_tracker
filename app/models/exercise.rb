# frozen_string_literal: true

class Exercise < ApplicationRecord
  belongs_to :workout
  belongs_to :exercise_master

  has_many :weight_sets, dependent: :destroy
  has_many :cardio_sets, dependent: :destroy

  validates :position, presence: true
end
