require 'spec_helper'

feature 'record a manufacturer' do
  scenario %Q{As a car salesperson
I want to record a car listing's manufacturer
So that I can keep track of its manufacturer
} do

manufact = FactoryGirl.create(:manufacturer)
visit new_car_path

  select('2013', :from => 'Year')
  select('Ferrari', :from => 'Manufacturer')
  fill_in 'Color', with: 'red'
  fill_in 'Mileage', with: '8000'
  fill_in 'Description', with: 'cool car'
  click_button 'Create Car'
  expect(page).to have_content("Car created.")
  end
end

#Acceptance Criteria:
#
#    When recording a car listing, I want to optionally associate it with its manufacturer.
#    If I delete a manufacturer, the manufacturer and its primary key should no longer be associated with any car listings.


#manufact = FactoryGirl.create(:manufacturer)
#record_id = manufact.id
#car_one = FactoryGirl.create(:car, manufacturer_id: manufact.id)
#car_two = FactoryGirl.create(:car, manufacturer_id: manufact.id)

#car_count = manufact.cars.count

#Manufacturer.find(record_id).destroy #delete, delete_all, destroy, destroy_all

#expect(car_one.manufacturer).to eql(nil)
#expect(car_two.manufacturer).to eql(nil)
#end
#end
