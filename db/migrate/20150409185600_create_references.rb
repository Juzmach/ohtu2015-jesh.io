class CreateReferences < ActiveRecord::Migration
  def change
    create_table :references do |t|
      t.string :title
      t.string :type
      t.string :author
      t.string :year
      t.string :pages

      t.timestamps null: false
    end
  end
end
