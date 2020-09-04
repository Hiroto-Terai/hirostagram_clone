class CreatePhotos < ActiveRecord::Migration[6.0]
  def up
    create_table :photos do |t|

      t.string :image, null: false
      t.references :post, foreign_key: true, null: false
      t.timestamps
    end
  end

  def down
    drop_table :photos
  end
end
