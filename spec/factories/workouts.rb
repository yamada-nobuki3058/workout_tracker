# frozen_string_literal: true

FactoryBot.define do
  factory :workout do
    association :user
    date { Time.zone.today }
  end
end
