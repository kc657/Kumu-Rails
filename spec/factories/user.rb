FactoryGirl.define do
    factory :user do
      sequence :email do |n| "person#{n}@example.com"
      password "abc12345"
      first_name 'Kevin'
      last_name 'Chen'
      confirmed_at { Time.now }
      sequence(:username) { |n| "user#{n}" }
    end
  end
end
