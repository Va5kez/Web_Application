class RemoveStartAtFromLoan < ActiveRecord::Migration[5.0]
  def change
    remove_column :loans, :Date_at, :date
  end
end
