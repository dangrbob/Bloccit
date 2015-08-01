class CreateAdvertisements < ActiveRecord::Migration
  def change
    create_table :advertisements do |t|
      t.string :title
      t.test :copy
      t.integer :price

      t.timestamps
    end
  end
end
