class User < ActiveRecord::Base
  attr_accessible :cust_address, :cust_city, :cust_phone, :cust_state, :cust_zip, :f_name, :integer, :integer, :l_name, :string, :string, :string, :string, :string
  has_many :dogs
  has_many :stylists
  has_many :grooms
  has_many a_vet_appts
end
