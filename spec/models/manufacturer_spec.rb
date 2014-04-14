require 'spec_helper'

describe Manufacturer do
  before(:each) do
    FactoryGirl.create(:manufacturer)
end
it {should validate_presence_of(:name)}
it {should validate_presence_of(:country)}
it {should validate_uniqueness_of(:name)}
end
