class CenterProgram < ActiveRecord::Base
  belongs_to :center
  belongs_to :user
  belongs_to :program
  # attr_accessible :title, :body
end
