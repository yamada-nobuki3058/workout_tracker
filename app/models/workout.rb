# frozen_string_literal: true

class Workout < ApplicationRecord
  belongs_to :user
  has_many :exercises, dependent: :destroy

  validates :date, presence: true
end
