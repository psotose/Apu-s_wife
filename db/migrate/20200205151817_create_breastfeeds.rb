class CreateBreastfeeds < ActiveRecord::Migration[5.2]
  def change
    create_table :breastfeeds do |t|
      t.float :volume
      t.integer :feed_time
      t.references :baby, foreign_key: true

      t.timestamps
    end
  end
end
