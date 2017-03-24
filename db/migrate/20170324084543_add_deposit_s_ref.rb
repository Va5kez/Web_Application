class AddDepositSRef < ActiveRecord::Migration[5.0]
  def change
    add_reference :deposit_savings, :saving, foreign_key: true
  end
end
