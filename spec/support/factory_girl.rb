require 'factory_girl'

FactoryGirl.define do
  factory :system do
    user
    status "uncompromised"
    memory 0
    differentiation 10
    apoptosis 3
    pyrogenation 3
  end
end


FactoryGirl.define do
  factory :user do
    sequence(:username) {|n| "user#{n}" }
    sequence(:email) {|n| "user#{n}@example.com" }
    password 'password'
    password_confirmation 'password'
  end

end
