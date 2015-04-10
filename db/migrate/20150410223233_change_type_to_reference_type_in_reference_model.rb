class ChangeTypeToReferenceTypeInReferenceModel < ActiveRecord::Migration
  def change
    rename_column :references, :reference_type, :reference_type
  end
end
