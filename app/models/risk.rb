class Risk < ActiveRecord::Base
  attr_accessible :name

  has_many :risk_details
  has_many :treatments
end

