class AddPhotosVenueNameToSpecials < ActiveRecord::Migration
  def change
    add_column :specials, :photo, :string
    add_column :specials, :vname, :string
  end
end
