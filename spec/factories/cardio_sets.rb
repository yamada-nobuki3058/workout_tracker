# frozen_string_literal: true

FactoryBot.define do
  factory :cardio_set do
    association :exercise
    distance { 5.0 }
    duration { 30 }
    position { 1 }
  end
end
