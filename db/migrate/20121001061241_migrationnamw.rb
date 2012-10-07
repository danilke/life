class Migrationnamw < ActiveRecord::Migration
  def up
    add_column :messages, :model_id, :integer
  end

  def down
  end
end
