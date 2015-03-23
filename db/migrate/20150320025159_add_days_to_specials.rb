class AddDaysToSpecials < ActiveRecord::Migration
  def change
    add_column :specials, :mon, :boolean
    add_column :specials, :tues, :boolean
    add_column :specials, :wed, :boolean
    add_column :specials, :thur, :boolean
    add_column :specials, :fri, :boolean
    add_column :specials, :sat, :boolean
    add_column :specials, :sun, :boolean
  end
end
