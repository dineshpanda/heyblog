class CreateJpgs < ActiveRecord::Migration[5.1]
  def change
    create_table :jpgs do |t|
      t.integer :photo_id

      t.timestamps
    end
  end
end
