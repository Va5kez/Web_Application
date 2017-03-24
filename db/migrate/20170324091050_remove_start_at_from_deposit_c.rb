class RemoveStartAtFromDepositC < ActiveRecord::Migration[5.0]
  def change
    remove_column :deposit_contributions, :date_at, :date
  end
end
