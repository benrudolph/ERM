class Treatment < ActiveRecord::Base
  attr_accessible :proactive, :target_date, :text

  belongs_to :risk
end
