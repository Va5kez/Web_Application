class RemoveStartAtFromContribution < ActiveRecord::Migration[5.0]
  def change
    remove_column :contributions, :start_at, :date
  end
end
