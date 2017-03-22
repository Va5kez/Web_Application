class CreateSavings < ActiveRecord::Migration[5.0]
  def change
    create_table :savings do |t|
      t.string :name
      t.date :start_at
      t.decimal :balance

      t.timestamps
    end
  end
end
