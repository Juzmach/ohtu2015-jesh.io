class ArticleAttributes < ActiveRecord::Migration
  def change
    add_column :references, :journal, :string
    add_column :references, :number, :string
    add_column :references, :pages, :string
  end
end