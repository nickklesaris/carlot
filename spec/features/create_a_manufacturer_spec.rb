require 'spec_helper'

feature 'add a manufacturer', %Q{As a car salesperson
I want to record a car manufacturer
So that I can keep track of the types of cars found in the lot
} do

#Acceptance Criteria:
#
#    I must specify a manufacturer name and country.
#    If I do not specify the required information, I am presented with errors.
#    If I specify the required information, the manufacturer is recorded and I am redirected to enter another new manufacturer.

scenario 'create a valid manufacturer' do
  manufacturer = FactoryGirl.create(:manufacturer)
  visit '/manufacturers/new'
  fill_in 'manufacturer_name', with: 'BMW'
  select('Germany', :from => 'Country')
  click_button 'Create Manufacturer'
  expect(page).to have_content('Manufacturer created.')
  end
end
