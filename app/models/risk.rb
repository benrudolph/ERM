class Risk < ActiveRecord::Base
  attr_accessible :name, :risk_details_attributes

  has_many :risk_details
  has_many :treatments

  accepts_nested_attributes_for :risk_details, :treatments
end

