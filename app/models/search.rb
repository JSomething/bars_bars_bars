class Search < ActiveRecord::Base
  serialize :venue_json, Hash
  def venues
    @venues ||= find_venues
  end

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

  private

  def find_venues
    venues = Venue.order(:venue_name)
    venues = venues.where(venue_category: venue_category) if venue_category.present?
    venues = venues.where(venue_subcategory: venue_subcategory) if venue_subcategory.present?
    venues = venues.where(dancing: dancing) if dancing.present?
    venues = venues.where(allows_under_21: dancing) if allows_under_21.present?
    venues = venues.where(food: dancing) if food.present?
    venues = venues.where(has_specials: has_specials) if has_specials.present?
    venues = venues.where(groups: dancing) if groups.present?
    venues = venues.where(price_range: price_range) if price_range.present?

  end
end
