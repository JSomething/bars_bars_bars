class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :venue_name
      t.string :venue_category
      t.string :venue_subcategory
      t.text :address
      t.boolean :dancing
      t.boolean :allows_under_21
      t.boolean :food
      t.boolean :has_specials
      t.boolean :groups
      t.string :price_range
      t.time :opening_time
      t.time :closing_time
    end
  end
end
