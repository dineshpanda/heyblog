class CreatePngs < ActiveRecord::Migration[5.1]
  def change
    create_table :pngs do |t|
      t.integer :photo_id

      t.timestamps
    end
  end
end
