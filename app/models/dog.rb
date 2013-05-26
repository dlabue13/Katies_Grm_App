class Dog < ActiveRecord::Base
  attr_accessible :dog_allergies, :dog_breed, :dog_name, :dog_weight, :int, :string, :string, :string

  belongs_to :user

end
