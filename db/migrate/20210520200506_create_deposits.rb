class CreateDeposits < ActiveRecord::Migration
  def change
    def change
      create_table :deposits do |t|
        t.string :name
        t.string :userid
        t.string :password
        t.string :amount
      
        t.timestamps
      end
    end
  end
end
