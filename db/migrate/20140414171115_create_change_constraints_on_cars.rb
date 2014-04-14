class CreateChangeConstraintsOnCars < ActiveRecord::Migration
  def up
  change_column(:cars, :manufacturer_id, :integer, null: false)

  end

  def down
    change_column(:cars, :manufacturer_id, :integer)
  end
end
