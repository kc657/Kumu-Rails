FactoryGirl.define do
  factory :user do
    first_name 'Kevin'
    last_name 'Chen'
    password_digest'abc12345'
    created_at { Time.now }
    sequence(:username) {|n| "user#{n}" }
  end
end
