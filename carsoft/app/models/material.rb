class Material < ActiveRecord::Base
  belongs_to :type_material
  belongs_to :user
  attr_accessible :description, :name
end
