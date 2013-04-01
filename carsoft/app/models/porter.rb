class Porter < ActiveRecord::Base
  belongs_to :turn
  attr_accessible :address, :name, :phone, :surname
end
