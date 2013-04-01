class Chip < ActiveRecord::Base
  belongs_to :program
  attr_accessible :code
end
