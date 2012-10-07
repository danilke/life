class Name1 < ActiveRecord::Migration
  def up
    create_table :roles_users
    add_column :roles_users, :user_id, :integer
    add_column :roles_users, :role_id, :integer
    
  end

  def down
  end
end
