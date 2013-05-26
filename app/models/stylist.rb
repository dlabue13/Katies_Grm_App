class Stylist < ActiveRecord::Base
  attr_accessible :string, :string, :string, :style_fname, :style_specialty, :stylst_lname

  belongs_to :user

end
