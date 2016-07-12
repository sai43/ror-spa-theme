class Setting < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.string :font
      t.string :color
      t.string :title

      t.timestamps null: false
    end
  end
end
