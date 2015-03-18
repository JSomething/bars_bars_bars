class Venue < ActiveRecord::Base
  has_many :specials
  accepts_nested_attributes_for :specials, allow_destroy: true

  PRICE_OPTIONS = [
    "Blah",
    "Blah 2",
    "Blah 3"
  ]

  CATEGORY_OPTIONS = [
    "Dive Bar",
    "Cocktail Bar",
    "Clubby Club"
  ]

  SUBCATEGORY_OPTIONS = [
    "Sleazy",
    "Fancy"
  ]
end
