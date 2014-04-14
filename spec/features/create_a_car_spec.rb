require 'spec_helper'

feature 'add a car', %Q{As a car salesperson
I want to record a newly acquired car
So that I can list it in my lot
} do

#Acceptance Criteria:
#
#    I must specify the color, year, and mileage of the car.
#    Only years from 1980 and above can be specified.
#    I can optionally specify a description of the car.
#    If I enter all of the required information in the required formats, the car is recorded.
#    If I do not specify all of the required information in the required formats, the car is not recorded and I am presented with errors.
#    Upon successfully creating a car, I am redirected so that I can create another car.

scenario 'create a valid car' do
  car = FactoryGirl.create(:car)
  visit new_car_path

  select('1995', :from => 'Year')
  select('Ferrari', :from => 'Manufacturer')
  fill_in 'Color', with: 'red'
  fill_in 'Mileage', with: '19500'
  fill_in 'Description', with: ''
  click_button 'Create Car'
  expect(page).to have_content("Car created.")
end
end
