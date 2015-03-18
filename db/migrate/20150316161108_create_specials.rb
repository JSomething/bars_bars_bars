class CreateSpecials < ActiveRecord::Migration
  def change
    create_table :specials do |s|
      s.integer :bar_id
      s.string :description
      s.string :active_days
      s.time :start_time
      s.time :end_time

      s.timestamps null: false
    end
  end
end
