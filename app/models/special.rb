class Special < ActiveRecord::Base
  belongs_to :venue

  ACTIVE_DAYS = [
    "Mon",
    "Tues",
    "Wed",
    "Thurs",
    "Fri",
    "Sat",
    "Sun"
  ]

end
