class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :name
      t.string :userid
      t.string :password
      t.string :amount
    
      t.timestamps
    end
    
  end
end
