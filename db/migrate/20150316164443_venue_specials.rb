class VenueSpecials < ActiveRecord::Migration
  def change
    create_table :venue_specials do |t|
      t.integer :venue_id
      t.integer :special_id
    end
  end
end
