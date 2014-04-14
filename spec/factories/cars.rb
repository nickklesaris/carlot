# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :car do
    color "brown"
    year "2014"
    mileage 1
    description ""
    manufacturer
  end
end
