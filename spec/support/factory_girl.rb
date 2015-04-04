require 'factory_girl'
FactoryGirl.define do
  factory :system do
    status "uncompromised"
    memory 0
    differentiation true
    apoptosis false
    pyrogenation false
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
