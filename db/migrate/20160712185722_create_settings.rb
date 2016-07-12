class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.string :color
      t.string :font
      t.string :title

      t.timestamps null: false
    end
  end
end
