class GrmUser < ActiveRecord::Base
  attr_accessible :address, :city, :fname, :lname, :phone, :state, :zip
end
