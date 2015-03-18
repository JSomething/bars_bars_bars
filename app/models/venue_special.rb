class VenueSpecial < ActiveRecord::Base
  belongs_to :venue
  belongs_to :special
end