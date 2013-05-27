class User < ActiveRecord::Base
  attr_accessible :address, :city, :first, :last, :phone, :state, :zip
end
