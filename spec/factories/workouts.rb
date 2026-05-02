FactoryBot.define do
  factory :workout do
    association :user
    date { Date.today }
  end
end
