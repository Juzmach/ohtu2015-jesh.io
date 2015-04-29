class AddMoreBookAttributes < ActiveRecord::Migration
  def change
  	add_column :references, :series, :string
    add_column :references, :edition, :string
    add_column :references, :month, :string
    add_column :references, :note, :string
    add_column :references, :key, :string
    add_column :references, :address, :string
  end
end
