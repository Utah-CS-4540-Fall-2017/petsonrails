class CreateSitters < ActiveRecord::Migration[5.1]
  def change
    create_table :sitters, force: true do |t|
      t.integer :user_id

      t.timestamps
    end
  end
end
