class User < ActiveRecord::Base
  belongs_to :document
  belongs_to :rh
  belongs_to :role
  belongs_to :type_user
  attr_accessible :confirm_password, :email, :female, :identification, :location, :male, :movil, :name, :password, :phone,
  :document_id, :rh_id, :role_id, :type_user_id
end
