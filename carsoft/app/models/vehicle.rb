class Vehicle < ActiveRecord::Base
  belongs_to :type_vhicle
  belongs_to :user
  attr_accessible :brand, :color, :model, :plate
end
