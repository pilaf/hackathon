class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.references :imageable, index: true
      t.string :imageable_type
      t.string :image

      t.timestamps
    end
  end
end
