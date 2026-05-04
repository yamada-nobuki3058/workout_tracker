# frozen_string_literal: true

FactoryBot.define do
  factory :exercise_master do
    name { 'ベンチプレス' }
    exercise_type { :weight }
    is_unilateral { false }
  end
end
