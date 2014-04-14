class Manufacturer < ActiveRecord::Base
  has_many :cars, dependent: :destroy
  validates :name, presence: true, uniqueness:{case_sensitive: false}
  validates :country, presence: true
end
