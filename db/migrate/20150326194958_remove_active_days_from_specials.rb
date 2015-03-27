class RemoveActiveDaysFromSpecials < ActiveRecord::Migration
  def change
    remove_column :specials, :active_days
  end
end
