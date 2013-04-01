class Parking < ActiveRecord::Base
  belongs_to :area
  belongs_to :vehicle
  attr_accessible :acronym, :espace_available, :location
end
