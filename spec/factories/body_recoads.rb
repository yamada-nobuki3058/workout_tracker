# frozen_string_literal: true

FactoryBot.define do
  factory :body_record do
    association :body_data_master
    date { Date.current }
    value { 65.5 }
  end
end
