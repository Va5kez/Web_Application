class AddDepositCRef < ActiveRecord::Migration[5.0]
  def change
    add_reference :deposit_contributions, :contribution, foreign_key: true
  end
end
