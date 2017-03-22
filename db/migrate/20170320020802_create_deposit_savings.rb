class CreateDepositSavings < ActiveRecord::Migration[5.0]
  def change
    create_table :deposit_savings do |t|
      t.date :date_at
      t.decimal :amount
      t.string :comment

      t.timestamps
    end
  end
end
