class CreateReferences < ActiveRecord::Migration
  def change
    create_table :references do |t|
      t.string :reference_type
      t.string :author
      t.string :title
      t.string :year
      t.string :publisher

      t.timestamps null: false
    end
  end
end
