class Venue < ActiveRecord::Base
  has_many :specials
  accepts_nested_attributes_for :specials, allow_destroy: true

  PRICE_OPTIONS = [
    "$",
    "$$",
    "$$$"
  ]

  CATEGORY_OPTIONS = [
    "Dive Bar",
    "Cocktail Lounge",
    "Wine Bar",
    "Taproom",
    "Clubby Club",
    "Music Venue"
  ]

  SUBCATEGORY_OPTIONS = [
    "Casual",
    "Upscale",
    "Snooty",
    "Touristy"
  ]
end
