class AddrefContributionToEmployee < ActiveRecord::Migration[5.0]
  def change
    add_reference :contributions, :employee, foreign_key: true
  end
end
