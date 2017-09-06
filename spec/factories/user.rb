FactoryGirl.define do
  factory :user do
    first_name 'Kevin'
    last_name 'Chen'
    sequence(:username) {|n| "user#{n}" }
    password_digest'abc12345'
    created_at { Time.now }
    bio "Hello World"
    image {}
  end

  factory :post do
    user_id '1'
    topic_id '2'
    name 'Test Post'
    description 'Rspec test post'
    url 'www.google.com'
    created_at { Time.now }
    content 'Testing'
    topic_id '1'
    user_id '2'
  end
end
