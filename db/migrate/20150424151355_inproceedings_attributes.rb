class InproceedingsAttributes < ActiveRecord::Migration
  def change
    add_column :references, :booktitle, :string
    #optional
    add_column :references, :editor, :string
    add_column :references, :organization, :string
  end
end
#editor, volume/number, series, pages, address, month, organization, publisher, note, key