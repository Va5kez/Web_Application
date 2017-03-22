class RemoveFieldNameFromTableName < ActiveRecord::Migration[5.0]
  def change
    remove_column :savings, :start_at
  end
end
