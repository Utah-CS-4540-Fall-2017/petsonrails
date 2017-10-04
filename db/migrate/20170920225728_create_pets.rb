class CreatePets < ActiveRecord::Migration[5.1]
  def change
    create_table :pets do |t|
      t.integer :size
      t.boolean :is_housetrained
      t.integer :owner_id
      t.integer :animal_subtype_id

      t.timestamps
    end
  end
end
