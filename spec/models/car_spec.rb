require 'spec_helper'

describe Car do
  before(:each) do
    FactoryGirl.create(:car)
end
it {should validate_presence_of(:color)}
it {should validate_presence_of(:year)}
it {should validate_presence_of(:mileage)}
it {should validate_presence_of(:color)}
it {should belong_to(:manufacturer)}
it {should ensure_inclusion_of(:year).in_array(Car::YEARS)}
end
