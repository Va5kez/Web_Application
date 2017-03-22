class CreateContributions < ActiveRecord::Migration[5.0]
  def change
    create_table :contributions do |t|
      t.string :name
      t.date :start_at
      t.decimal :balance

      t.timestamps
    end
  end
end
