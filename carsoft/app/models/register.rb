class Register < ActiveRecord::Base
  belongs_to :vehicle
  belongs_to :porter
  belongs_to :material
  belongs_to :user
  belongs_to :team
  attr_accessible :amount, :center, :date, :destination, :movement, :procedensia, :time
end
