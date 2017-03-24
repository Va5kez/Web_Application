class RemoveStartAtFromPayment < ActiveRecord::Migration[5.0]
  def change
    remove_column :payments, :date_at, :date
  end
end
