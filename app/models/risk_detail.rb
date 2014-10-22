class RiskDetail < ActiveRecord::Base
  attr_accessible :cause, :change_reason, :closed, :comments, :consequences, :end_date, :event, :start_date

  belongs_to :risk
end
