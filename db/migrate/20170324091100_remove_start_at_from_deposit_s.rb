class RemoveStartAtFromDepositS < ActiveRecord::Migration[5.0]
  def change
    remove_column :deposit_savings, :date_at, :date
  end
end
