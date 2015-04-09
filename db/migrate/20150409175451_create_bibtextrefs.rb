class CreateBibtextrefs < ActiveRecord::Migration
  def change
    create_table :bibtextrefs do |t|
      t.references :author, index: true, foreign_key: true
      t.references :journal, index: true, foreign_key: true
      t.string :title
      t.integer :year
      t.integer :volume
      t.string :pages

      t.timestamps null: false
    end
  end
end
