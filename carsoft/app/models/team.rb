class Team < ActiveRecord::Base
  belongs_to :porter
  belongs_to :user
  attr_accessible :brand, :description, :serial, :type
end
