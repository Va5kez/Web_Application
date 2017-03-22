class CreateDepositContributions < ActiveRecord::Migration[5.0]
  def change
    create_table :deposit_contributions do |t|
      t.date :date_at
      t.decimal :amount
      t.string :comment

      t.timestamps
    end
  end
end
