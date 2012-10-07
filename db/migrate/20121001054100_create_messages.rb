class CreateMessages < ActiveRecord::Migration
  def up 
    create_table :messages
    add_column :messages, :text, :string
    add_column :messages, :from, :string
    add_column :messages, :created_at, :datetime


  end
end
