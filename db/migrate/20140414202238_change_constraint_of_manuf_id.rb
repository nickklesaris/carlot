class ChangeConstraintOfManufId < ActiveRecord::Migration
  def up
    change_column(:cars, :manufacturer_id, :integer, null: true)
  end
  def down
  change_column(:cars, :manufacturer_id, :integer, null: false)
  end
end
