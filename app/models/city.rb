class City < ActiveRecord::Base
  has_many :issues

  #Validations
  validates :name, :subdomain, :country, :latitude, :longitude, presence: true
  validates :latitude, :longitude, numericality: true
end
