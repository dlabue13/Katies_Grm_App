class AVetAppt < ActiveRecord::Base
  attr_accessible :string, :string, :string, :string, :string, :vet_date, :vet_fdate, :vet_fname, :vet_lname, :vet_vacc

  belongs_to :user

end
