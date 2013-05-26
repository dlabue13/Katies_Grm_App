class Groom < ActiveRecord::Base
  attr_accessible :grappt_date, :grappt_futappdate, :grappt_style, :string, :string, :string

  belongs_to :user

end
