# frozen_string_literal: true

FactoryBot.define do
  factory :exercise do
    association :workout
    association :exercise_master
    position { 1 }
  end
end
