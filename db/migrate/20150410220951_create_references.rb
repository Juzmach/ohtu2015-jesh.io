class CreateReferences < ActiveRecord::Migration
  def change
    create_table :references do |t|
      t.string :reference_type
      t.string :author
      t.string :title
      t.string :year
      t.string :publisher
      t.string :volume
      #optional
      t.string :series
      t.string :address
      t.string :edition
      t.string :month
      t.string :note
      t.string :key

      t.timestamps null: false
    end
  end
end
