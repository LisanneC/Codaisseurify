FactoryGirl.define do
  factory :song do
    title             { Faker::Company.bs }
    year_of_release   true
  end
end
