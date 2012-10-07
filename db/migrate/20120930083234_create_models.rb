class CreateModels < ActiveRecord::Migration
  def change
    create_table :models do |t|
      t.string :name
      t.string :password
      t.string :email
      t.string :image
      t.string :camera

      t.timestamps
    end
  end
end
