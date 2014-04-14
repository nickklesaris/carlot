class Manufacturer < ActiveRecord::Base
  validates :name, presence: true, uniqueness:{case_sensitive: false}
  validates :country, presence: true
end
