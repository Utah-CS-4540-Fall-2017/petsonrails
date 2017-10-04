class RollBackUsers < ActiveRecord::Migration[5.1]
  def change
    drop_table :users
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :zip_code
      t.string :email
      t.timestamps
    end
  end
end
