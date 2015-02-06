require 'factory_girl'

FactoryGirl.define do
  factory :user do
    sequence(:email) {|n| "user#{n}@example.com" }
    password 'password'
    password_confirmation 'password'
    cash 100000000
  end

  factory :stock do
    ticker 'AAPL'
    name 'Apple'
  end

  factory :position do
    quantity 5
    price 10000
    user
    stock
  end
end
