class ChangeYearToString < ActiveRecord::Migration
  def up
    execute 'ALTER TABLE cars ALTER COLUMN year TYPE text USING (year::text)'
  end
  def down
    execute 'ALTER TABLE cars ALTER COLUMN year TYPE integer USING (year::integer)'
  end
end
