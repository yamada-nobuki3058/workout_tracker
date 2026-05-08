# frozen_string_literal: true

FactoryBot.define do
  factory :weight_set do
    association :exercise
    weight { 60.0 }
    reps { 10 }
    position { 1 }
  end
end
