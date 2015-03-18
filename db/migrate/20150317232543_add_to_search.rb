class AddToSearch < ActiveRecord::Migration
  def change
    add_column :searches, :venue_name, :string
    add_column :searches, :venue_category, :string
    add_column :searches, :venue_subcategory, :string
    add_column :searches, :address, :string
    add_column :searches, :dancing, :boolean
    add_column :searches, :allows_under_21, :boolean
    add_column :searches, :food, :boolean
    add_column :searches, :has_specials, :boolean
    add_column :searches, :groups, :boolean
    add_column :searches, :price_range, :string
    add_column :searches, :opening_time, :time
    add_column :searches, :closing_time, :time 
  end
end
