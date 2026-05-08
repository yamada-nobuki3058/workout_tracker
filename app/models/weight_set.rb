# frozen_string_literal: true

class WeightSet < ApplicationRecord
  belongs_to :exercise

  validates :weight, presence: true,
                     numericality: { greater_than_or_equal_to: 0 }

  validates :reps, presence: true,
                   numericality: { only_integer: true, greater_than: 0 }

  validates :position, presence: true,
                       numericality: { only_integer: true, greater_than: 0 }
end
